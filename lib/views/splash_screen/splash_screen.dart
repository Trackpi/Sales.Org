import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _buttonOpacity = 0.0; // Button fade-in opacity

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 800),
            () => setState(() => _buttonOpacity = 1.0));
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
        final waveHeight = 60 * (1 - _controller.value);
        return Scaffold(
          backgroundColor: _controller.value >= 1.0
              ? const Color(0xffFE8900)
              : Colors.transparent,
          body: Stack(
            children: [
              CustomPaint(
                painter: WavePainter(
                    progress: _controller.value, waveHeight: waveHeight),
                child: const SizedBox.expand(),
              ),
              Center(
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: 1.0),
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeIn,
                  builder: (context, scale, child) =>
                      Transform.scale(scale: scale, child: child),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        Assets.png.logo.path,
                        width: 200,
                        height: 200,
                      ),
                      const Text(
                        "Your Strategic Growth Partner",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedOpacity(
                opacity: _buttonOpacity,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, AppRoutes.loginScreen),
                      child: Container(
                        alignment: Alignment.center,
                        width: 313,
                        height: 49,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
  final double waveHeight;

  WavePainter({required this.progress, required this.waveHeight});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xffFEDC3F), Color(0xffFE8900)],
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final path = Path();
    final waveProgress = size.height * (1 - progress);

    path.moveTo(0, size.height);
    path.lineTo(0, waveProgress);

    for (double x = 0; x <= size.width; x += size.width / 20) {
      final y = waveProgress +
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
