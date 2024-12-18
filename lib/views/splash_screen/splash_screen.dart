import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _buttonOpacity = 0.0; // Initial opacity for the button

  @override
  void initState() {
    super.initState();
    // Trigger the fade-in animation after a slight delay
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _buttonOpacity = 1.0; // Change opacity to make the button fully visible
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xffFEDC3F),
              const Color(0xffFE8900),
            ],
            stops: const [0.0, 0.8],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Animated logo
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.5, end: 1.0),
              duration: const Duration(seconds: 2),
              curve: Curves.easeOut,
              builder: (context, scale, child) {
                return Transform.scale(
                  scale: scale,
                  child: child,
                );
              },
              child: Image.asset(
                Assets.png.logo.path,
              ),
            ),
            const SizedBox(
              height: 255,
            ),
            // Fade-in animated button
            AnimatedOpacity(
              opacity: _buttonOpacity,
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.loginScreen);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 313,
                  height: 49,
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      color: Color(0xffFE8900),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
