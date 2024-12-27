//for deekshith

import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class ProfilePersonalInfoscreen extends StatelessWidget {
  const ProfilePersonalInfoscreen({super.key});

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
          "Personal Informations",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: SizeUtils.height * 0.01,
          horizontal: SizeUtils.width * 0.02,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeUtils.height * 0.001,
              ),
              Center(
                  child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/474x/d3/35/82/d33582c29c07eb66f8ad2f777cd36a78.jpg"),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff2A2A2A)),
                          child: Center(
                            child: Icon(Icons.mode_edit_outline_outlined,
                                color: Colors.white),
                          ),
                        ),
                      ))
                ],
              )),
              SizedBox(
                height: SizeUtils.height * 0.04,
              ),
              buildInfoTile(
                icon: Icons.person,
                info: 'Paul Walker',
              ),
              buildInfoTile(icon: Icons.remember_me_outlined, info: '#123456'),
              buildInfoTile(icon: Icons.email, info: 'paulwalker@gmail.com'),
              buildInfoTile(icon: Icons.phone, info: '9876543210'),
              buildInfoTile(
                  icon: Icons.calendar_month,
                  info: 'Date of Birth',
                  icon2: Icons.edit),
              buildInfoTile(
                  icon: Icons.bloodtype,
                  info: 'Blood Group',
                  icon2: Icons.edit),
              buildInfoTile(
                  icon: Icons.location_on, info: 'Location', icon2: Icons.edit),
              buildInfoTile(
                  icon: Icons.home, info: 'Address', icon2: Icons.edit),
              buildInfoTile(
                  icon: Icons.pin_drop, info: 'Pin Code', icon2: Icons.edit),
              buildInfoTile(
                  icon: Icons.location_city, info: 'City', icon2: Icons.edit),
              buildInfoTile(
                  icon: Icons.flag, info: 'Country', icon2: Icons.edit),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildInfoTile({IconData? icon, required String info, IconData? icon2}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xff2A2A2A)),
      height: 44,
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              info,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          IconButton(
            icon: Icon(icon2, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
    ),
  );
}
