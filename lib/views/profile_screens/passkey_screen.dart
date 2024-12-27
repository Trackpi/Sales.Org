import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class PasskeyScreen extends StatelessWidget {
  const PasskeyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // App bar with custom title and notification icon
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Passkey", // Title of the screen
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        // Notification icon in the app bar
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
          // Adds spacing after the icon
          SizedBox(
            width: SizeUtils.width * 0.055,
          )
        ],
      ),
      // Main content wrapped in SingleChildScrollView to handle overflow
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.width * 0.04,
              vertical: SizeUtils.height * 0.054),
          // Column for arranging widgets vertically
          child: Column(
            children: [
              // Title for the form
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
                height: SizeUtils.height * 0.045, // Spacing between elements
              ),
              // Input field for current password
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color:
                        Colors.white, // Eye icon for password visibility toggle
                  ),
                  fillColor: Color(0xFF1A1A1A), // Background color of input
                  hintText: "Current Password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.02, // Spacing between fields
              ),
              // Input field for new password
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
              // Input field for confirming password
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
              // Save button with gradient background
              Container(
                height: SizeUtils.height * 1,
                width: SizeUtils.width * 1,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffFEDC3F), // Gradient start color
                      Color(0xffFE8900), // Gradient end color
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Save", // Save button text
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
