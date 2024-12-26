//for arjun
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class TeamDetails extends StatelessWidget {
  const TeamDetails({super.key});

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
          "Team & Details",
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
            children: [
              Center(
                child: Text(
                  "Team Name",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.02,
              ),
              //manager card with details
              Container(
                child: Row(
                  children: [
                    Container(
                      height: SizeUtils.height * 0.120,
                      width: SizeUtils.width * 0.28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://i0.wp.com/previsomedia.com/wp-content/uploads/2015/04/business-manager-2.jpg?fit=795%2C500&ssl=1"))),
                    ),
                    SizedBox(
                      width: SizeUtils.width * 0.04,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Manager Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: SizeUtils.height * 0.015,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(
                              width: SizeUtils.width * 0.015,
                            ),
                            Text(
                              "manager@gmail.com",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeUtils.height * 0.017,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(
                              width: SizeUtils.width * 0.015,
                            ),
                            Text(
                              "9865451287",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xFF2A2A2A),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              Text(
                "Members of Team",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: SizeUtils.height * 0.02,
              ),
              //team name and picture
              ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CircleAvatar(
                          radius: SizeUtils.height * 0.025,
                          backgroundImage: NetworkImage(
                              "https://www.learningroutes.in/_next/image?url=https%3A%2F%2Faskusedu.com%2Fblogdashboard%2Fwp-content%2Fuploads%2F2024%2F03%2Fgeneral-manger.webp&w=1920&q=75"),
                        ),
                        SizedBox(
                          width: SizeUtils.width * 0.035,
                        ),
                        Text(
                          "Team Member Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: SizeUtils.height * 0.035,
                      ),
                  itemCount: 5),
            ],
          ),
        ),
      ),
    );
  }
}
