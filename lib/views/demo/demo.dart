import 'package:flutter/material.dart';
import 'dart:math';

class WaveBackgroundScreen extends StatefulWidget {
  @override
  _WaveBackgroundScreenState createState() => _WaveBackgroundScreenState();
}

class _WaveBackgroundScreenState extends State<WaveBackgroundScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            // Change to a solid yellow color after animation completes
            _controller.stop();
          });
        }
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color:
                Color.lerp(Color(0xffFE8900), Colors.yellow, _animation.value),
          ),
          CustomPaint(
            painter: WavePainter(_animation.value),
            child: Container(),
          ),
        ],
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  final double animationValue;

  WavePainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xffFE8900).withOpacity(1.0)
      ..style = PaintingStyle.fill;

    final path = Path();

    final waveHeight =
        20.0 + 20.0 * animationValue; // Adjust wave height with animation
    final waveLength = size.width;

    path.moveTo(0, size.height * (1 - animationValue));
    path.lineTo(0, size.height * (1 - animationValue) * 0.75);

    for (double i = 0; i <= waveLength; i++) {
      final y = size.height * (1 - animationValue) * 0.75 +
          waveHeight *
              sin((i / waveLength * 2 * pi) - (animationValue * 2 * pi));
      path.lineTo(i, y);
    }

    path.lineTo(size.width, size.height * (1 - animationValue));
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
