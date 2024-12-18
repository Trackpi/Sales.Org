import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFEDC3F),
              Color(0xffFE8900),
            ],
            stops: [0.0, 0.8],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(Assets.png.logo.path)],
        ),
      ),
    );
  }
}
