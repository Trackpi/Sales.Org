//for arjun
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List documents = [
    "Documents",
    "Personal Informations",
    "Team & Details",
    "Resignation",
    "Passkey"
  ];
  bool isLightmode = false;
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
      body: Padding(
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
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Text(
                        documents[index],
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
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: SizeUtils.height * 0.028,
                    ),
                itemCount: documents.length),
            SizedBox(
              height: SizeUtils.height * 0.035,
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
                  "Light mode",
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
              height: SizeUtils.height * 0.09,
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
                      color: Color(0xFFFCB205),
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(
                          color: Color(0xFFFCB205),
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFCB205), width: 2),
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
