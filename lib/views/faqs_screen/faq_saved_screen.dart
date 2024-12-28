//for gokul

import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/widgets/list_tile.dart';

class FaqSavedScreen extends StatelessWidget {
  const FaqSavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
          ),
          SizedBox(
            // width: 20,
            width: SizeUtils.width * 0.04,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.width * 0.04,
            vertical: SizeUtils.height * 0.01),
        child: Column(
          children: [
            //column with padding
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "How can we help you?",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  // height: 15,
                  height: SizeUtils.height * 0.03,
                ),
                //search field
                SizedBox(
                  // height: 40,
                  height: SizeUtils.height * 0.06,

                  child: TextFormField(
                    cursorColor: Color(0xffffffff),
                    decoration: InputDecoration(
                      fillColor: Color(0xff2A2A2A),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffffffff).withAlpha(50),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        height: 1.3,
                        color: Color(0xffffffff).withAlpha(50),
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Color(0xffffffff),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(
                  // height: 20,
                  height: SizeUtils.height * 0.03,
                ),
                //heading saved faqs
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Saved FAQs",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              // height: 10,
              height: SizeUtils.height * 0.01,
            ),
            //saved faqs list
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(
                      color: Color(0xffffffff).withAlpha(75),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => List_tile(
                            leadingIcon: Icons.history,
                            text: "How to add a payment method by this app?",
                            trailingIcon: Icons.star_rounded),
                        separatorBuilder: (context, index) => Divider(
                              color: Color(0xffffffff).withAlpha(75),
                            ),
                        itemCount: 15),
                    Divider(
                      color: Color(0xffffffff).withAlpha(75),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
