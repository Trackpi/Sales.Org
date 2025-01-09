import 'package:flutter/material.dart';
import 'package:sales_org/theme/constants.dart';
import 'package:sales_org/utils/size_utils.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: SizeUtils.width * 0.075,
          vertical: SizeUtils.height * 0.01),
      decoration: BoxDecoration(
        gradient: buttonGradientColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Submit",
        style: TextStyle(
            color: pureWhite,
            fontWeight: FontWeight.bold,
            fontSize: 15),
      ),
    );
  }
}