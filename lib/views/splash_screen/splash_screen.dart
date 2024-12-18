import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/routes/app_routes.dart';

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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(Assets.png.logo.path),
            SizedBox(
              height: 255,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.loginScreen);
              },
              child: Container(
                alignment: Alignment.center,
                width: 313,
                height: 49,
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Color(0xffFE8900),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
