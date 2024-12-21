import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_org/gen/assets.gen.dart';

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
            width: 25,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
              height: 15,
            ),
            //search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
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
              height: 27,
            ),
            SvgPicture.asset(
              Assets.svg.searchingData,
              height: 348,
              width: 393,
            ),
            Text(
              "No Result Found",
              style: TextStyle(color: Color(0xFFFCB205), fontSize: 24),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Would you like to submit your Question to us ?",
              style: TextStyle(color: Color(0xFFFCB205), fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
              decoration: BoxDecoration(
                  color: Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Text(
                    "Enter your question",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 58, vertical: 8),
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
