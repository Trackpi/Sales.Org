//for deekshith

import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class ResignationformScreen extends StatelessWidget {
  const ResignationformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
        backgroundColor: Colors.black,
        title: Text(
          "Resignation",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeUtils.height * 0.01,
            horizontal: SizeUtils.width * 0.02,
          ),
          child: Column(
            children: [
              // SizedBox(
              //   height: 20,
              // ),
              Center(
                child: Text(
                  "Resignation Form",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.022,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.height * 0.012,
                  horizontal: SizeUtils.width * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "From",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "20/12/2024",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeUtils.height * 0.02,
                    ),
                    Text(
                      "Paul Walker",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Designation",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: SizeUtils.height * 0.02,
                    ),
                    Text(
                      "To",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: SizeUtils.height * 0.02,
                    ),
                    Text(
                      "Tom Wilson",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Manager",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    TextFormField(),
                    SizedBox(
                      height: SizeUtils.height * 0.03,
                    ),
                    Text(
                      "Reason for resignation",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 14,
                      ),
                    ),
                    TextFormField(),
                    SizedBox(
                      height: SizeUtils.height * 0.02,
                    ),
                    Text(
                      "Explanation for resignation",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xff2A2A2A),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 524,
                width: 353,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                width: 135,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffFEDC3F),
                    Color(0xffFE8900),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
