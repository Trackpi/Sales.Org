import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class BrochureCard extends StatelessWidget {
  const BrochureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeUtils.height * 0.2,
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.width * 0.04,
                    vertical: SizeUtils.height * 0.012),
                alignment: Alignment.topRight,
                height: SizeUtils.height * 0.16,
                child: Icon(
                  Icons.bookmark,
                  size: 30,
                  color: Color(0xFFFCB205),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                )),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeUtils.width * 0.035,
                  vertical: SizeUtils.height * 0.005),
              child: Row(
                children: [
                  Text(
                    "Brochure Name",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  Icon(
                    Icons.download_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.share,
                    size: 20,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xFFFCB205),
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
