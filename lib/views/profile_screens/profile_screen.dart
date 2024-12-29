//for arjun
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/utils/size_utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLightmode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Profile",
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
              vertical: SizeUtils.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: SizeUtils.height * 0.06,
                  backgroundImage: NetworkImage(
                      "https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg"),
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ),
              Center(
                child: Text(
                  "Paul Walker",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Employee ID : #123456",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                  SizedBox(
                    width: SizeUtils.width * 0.015,
                  ),
                  Icon(
                    Icons.content_copy,
                    color: Colors.white,
                    size: 16,
                  )
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.035,
              ),
              Text(
                "Personal Documents",
                style: TextStyle(
                    color: Color(0xFFFCB205),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: SizeUtils.height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.documents);
                },
                child: Row(
                  children: [
                    Text(
                      "Documents",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.028,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.personalInfo);
                },
                child: Row(
                  children: [
                    Text(
                      "Personal informations",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.028,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.teamDetails);
                },
                child: Row(
                  children: [
                    Text(
                      "Team & Details",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.028,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.resignationScreen);
                },
                child: Row(
                  children: [
                    Text(
                      "Resignation",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.028,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.passKey);
                },
                child: Row(
                  children: [
                    Text(
                      "Passkey",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.028,
              ),
              Row(
                children: [
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.028,
              ),
              Row(
                children: [
                  Text(
                    "Privacy Policies",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.028,
              ),
              Text(
                "Preferences",
                style: TextStyle(
                    color: Color(0xFFFCB205),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: SizeUtils.height * 0.022,
              ),
              Row(
                children: [
                  Text(
                    "Languages",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.022,
              ),
              Row(
                children: [
                  Text(
                    isLightmode ? "Light mode" : "Dark mode",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  Spacer(),
                  Switch(
                    value: isLightmode,
                    thumbIcon: WidgetStatePropertyAll(isLightmode
                        ? Icon(Icons.dark_mode_outlined)
                        : Icon(Icons.light_mode_outlined)),
                    activeColor: Color(0xFFFCB205),
                    onChanged: (value) {
                      setState(() {
                        isLightmode = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.035,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: SizeUtils.height * 0.04,
                      // width: SizeUtils.width * 0.65,
                      decoration: BoxDecoration(
                          color: Color(0xFFFCB205),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: SizeUtils.width * 0.055,
                          ),
                          Text(
                            'Share, refer & earn',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeUtils.width * 0.048,
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    dashPattern: [6, 3],
                    color: Color(0xFFFCB205),
                    strokeWidth: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      // height: SizeUtils.height * 0.035,
                      // width: SizeUtils.width * 0.10,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.copy,
                        size: 20,
                        color: Color(0xFFFCB205),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.04,
              ),
              Center(
                child: Container(
                  height: SizeUtils.height * 0.05,
                  width: SizeUtils.width * 0.30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
