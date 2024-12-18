import 'dart:math';

import 'package:flutter/material.dart';




class WaveBackgroundScreen extends StatefulWidget {
  @override
  _WaveBackgroundScreenState createState() => _WaveBackgroundScreenState();
}

class _WaveBackgroundScreenState extends State<WaveBackgroundScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CustomPaint(
            painter: WavePainter(_controller.value),
            child: Container(),
          );
        },
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
      ..color = Color(0xffFE8900).withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final path = Path();

    final waveHeight = 20.0;
    final waveLength = size.width;

    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.75);

    for (double i = 0; i <= waveLength; i++) {
      final y = size.height * 0.75 + waveHeight * sin((i / waveLength * 2 * pi) + (animationValue * 2 * pi));
      path.lineTo(i, y);
    }

    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
