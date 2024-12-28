import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/utils/size_utils.dart';

class FaqNoResultScreen extends StatelessWidget {
  const FaqNoResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "FAQs",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        //saved questions icon
        actions: [
          Icon(
            Icons.star_outline,
            color: Colors.white,
          ),
          SizedBox(
            // width: 25,
            width: SizeUtils.width * 0.05,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: SizeUtils.height * 0.01,
            horizontal: SizeUtils.width * 0.04),
        child: Column(
          children: [
            Center(
              child: Text(
                "How can we help you?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              // height: 15,
              height: SizeUtils.height * 0.02,
            ),
            //search bar
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeUtils.width * 0.05,
                  vertical: SizeUtils.height * 0.01),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    // width: 10,
                    width: SizeUtils.width * 0.015,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  //voice search
                  Icon(
                    Icons.mic,
                    color: Colors.white,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              // height: 27,
              height: SizeUtils.height * 0.05,
            ),
            SvgPicture.asset(
              Assets.svg.searchingData,
              // height: 348,
              height: SizeUtils.height * .48,
              // width: 393,
            ),
            Text(
              "No Result Found",
              style: TextStyle(color: Color(0xFFFCB205), fontSize: 24),
            ),
            SizedBox(
              // height: 5,
              height: SizeUtils.height * 0.005,
            ),
            Text(
              "Would you like to submit your Question to us ?",
              style: TextStyle(color: Color(0xFFFCB205), fontSize: 14),
            ),
            SizedBox(
              // height: 10,
              height: SizeUtils.height * 0.01,
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF2A2A2A),
                hintText: "Enter your question",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.width * 0.02,
                    vertical: SizeUtils.height * 0.01),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),

            SizedBox(
              // height: 30,
              height: SizeUtils.height * 0.04,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeUtils.width * 0.1,
                  vertical: SizeUtils.height * 0.01),
              decoration: BoxDecoration(
                  // color: Color(0xFF2A2A2A),
                  gradient: LinearGradient(colors: [
                    Color(0xFFFCB205),
                    Color(0xffFE8900),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                "Submit",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//for arjun
