import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _buttonOpacity = 0.0; // Button fade-in opacity
  double _textOpacity = 0.0; // Text fade-in opacity

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();

    // Trigger text and button fade-in after wave animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 300), () {
          setState(() {
            _textOpacity = 1.0;
          });
        });
        Future.delayed(const Duration(milliseconds: 800), () {
          setState(() {
            _buttonOpacity = 1.0;
          });
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: _controller.value >= 1.0
              ? const Color(0xffFE8900)
              : Colors.transparent,
          body: Stack(
            children: [
              // Wave animation
              CustomPaint(
                painter: WavePainter(progress: _controller.value),
                child: const SizedBox.expand(),
              ),

              // Zoom-in logo animation from zero size
              Center(
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: 1.0),
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeIn,
                  builder: (context, scale, child) {
                    return Transform.scale(
                      scale: scale,
                      child: child,
                    );
                  },
                  child: Image.asset(
                    Assets.png.logo.path, // Replace with your asset path
                    width: 200,
                    height: 200,
                  ),
                ),
              ),

              // Fade-in text below the logo
              AnimatedOpacity(
                opacity: _textOpacity,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Text(
                      "Your Strategic Growth Partner",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),

              // Fade-in "Get Started" button
              AnimatedOpacity(
                opacity: _buttonOpacity,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: GestureDetector(
                      onTap: () {
                        // Add navigation logic here
                        Navigator.pushNamed(context, AppRoutes.loginScreen);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 313,
                        height: 49,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                            color: Color(0xffFE8900),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class WavePainter extends CustomPainter {
  final double progress;

  WavePainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color(0xffFEDC3F),
          Color(0xffFE8900),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final path = Path();

    double waveHeight = 30;
    double waveProgress = size.height * (1 - progress);

    path.moveTo(0, size.height);
    path.lineTo(0, waveProgress);

    for (double x = 0; x <= size.width; x += size.width / 20) {
      double y = waveProgress +
          waveHeight * math.sin(2 * math.pi * (x / size.width + progress));
      path.lineTo(x, y);
    }

    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
