//for aparna
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_org/utils/size_utils.dart';

class FaqNoSavedScreen extends StatelessWidget {
  const FaqNoSavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0a0a),
      appBar: AppBar(
        backgroundColor: Color(0xff0a0a0a),
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xffffffff),
          size: 24,
        ),
        centerTitle: true,
        title: Text(
          "FAQs",
          style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.star_rounded,
            color: Color(0xffFFB300),
            size: 24,
          ),
          SizedBox(
            // width: 20,
            width: SizeUtils.width * 0.04,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/svg/amico.svg"),
            SizedBox(
              // height: 50,
              height: SizeUtils.height * 0.05,
            ),
            Text(
              "No Saved FAQs",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFB300)),
            )
          ],
        ),
      ),
    );
  }
}
