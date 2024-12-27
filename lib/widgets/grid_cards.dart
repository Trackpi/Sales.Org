import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class GridCards extends StatelessWidget {
  const GridCards(
      {super.key,
      this.needSavebutton = false,
      required this.title,
      required this.url,
      required this.subtitle});
  final bool needSavebutton;
  final String title, url, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: SizeUtils.height * 0.01,
          horizontal: SizeUtils.width * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  right: SizeUtils.width * 0.01, top: SizeUtils.height * 0.005),
              alignment: Alignment.topRight,
              height: SizeUtils.height * 0.13,
              //save button
              child: needSavebutton
                  ? Icon(
                      Icons.bookmark_outline,
                      color: Color(0xFFFCB205),
                    )
                  : Icon(null),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      url,
                    )),
              ),
            ),
          ),
          SizedBox(
            // height: 8,
            height: SizeUtils.height * 0.008,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 16),
          ),
          Text(
            subtitle,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xFF2A2A2A), borderRadius: BorderRadius.circular(10)),
    );
  }
}
