//Deekshith R

import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class ProfileDocumentScreen extends StatefulWidget {
  const ProfileDocumentScreen({super.key});

  @override
  State<ProfileDocumentScreen> createState() => _ProfileDocumentScreenState();
}

class _ProfileDocumentScreenState extends State<ProfileDocumentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        centerTitle: true, // Center the title in the app bar
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
            onPressed: () {}, // Handle notification icon press
          )
        ],
        backgroundColor: Colors.black, // AppBar background color
        title: Text(
          "Documents",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(), // Enable scrolling with bounce effect
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeUtils.height * 0.01,
            horizontal: SizeUtils.width * 0.02,
          ),
          child: Column(
            children: [
              // ListView to display multiple document cards
              ListView.separated(
                shrinkWrap: true, // Allow ListView to occupy only needed space
                physics:
                    NeverScrollableScrollPhysics(), // Disable ListView's internal scrolling
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFB300),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  height:
                      SizeUtils.height * 0.2, //  height for each document card
                  width: SizeUtils.width * 1, //  width for each document card
                  child: Column(
                    children: [
                      // Top section of the card
                      Container(
                        height: SizeUtils.height * 0.14,
                        width: SizeUtils.width * 1,
                        decoration: BoxDecoration(
                          color: Color(0xff2A2A2A),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      // Bottom section of the card with text and icons
                      Row(
                        children: [
                          SizedBox(
                            width: SizeUtils.width * 0.02,
                          ), // Add spacing
                          Text(
                            'Business Card',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Spacer(), // Push icons to the right
                          IconButton(
                            iconSize: 23,
                            onPressed: () {}, // Handle download icon press
                            icon: Icon(
                              Icons.file_download_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            iconSize: 20,
                            onPressed: () {}, // Handle share icon press
                            icon: Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: SizeUtils.height * 0.022, // Add spacing between cards
                ),
                itemCount: 10, // Number of document cards to display
              )
            ],
          ),
        ),
      ),
    );
  }
}
