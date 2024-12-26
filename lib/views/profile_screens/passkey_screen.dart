//for arjun
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class PasskeyScreen extends StatelessWidget {
  const PasskeyScreen({super.key});

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
          "Passkey",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        //notifications icon
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: SizeUtils.width * 0.055,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.width * 0.04,
              vertical: SizeUtils.height * 0.054),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Change Passkey",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.045,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.white,
                  ),
                  fillColor: Color(0xFF1A1A1A),
                  hintText: "Current Password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 13),
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
                height: SizeUtils.height * 0.02,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF1A1A1A),
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.white,
                  ),
                  hintText: "New Password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 13),
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
                height: SizeUtils.height * 0.02,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF1A1A1A),
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.white,
                  ),
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 13),
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
                height: SizeUtils.height * 0.066,
              ),
              Container(
                height: SizeUtils.height * 0.04,
                width: SizeUtils.width * 0.300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffFEDC3F),
                      Color(0xffFE8900),
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
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
