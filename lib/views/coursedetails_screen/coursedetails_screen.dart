import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class CoursedetailsScreen extends StatelessWidget {
  const CoursedetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Course Details",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          const Icon(
            Icons.quiz_outlined,
            color: Colors.white,
          ),
          SizedBox(width: SizeUtils.width * 0.015),
          const Icon(
            Icons.bookmark_outline,
            color: Colors.white,
          ),
          SizedBox(width: SizeUtils.width * 0.03),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.width * 0.04,
              vertical: SizeUtils.height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //company image
              Container(
                height: SizeUtils.height * 0.228,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g"))),
              ),
              SizedBox(
                height: SizeUtils.height * 0.015,
              ),
              Text(
                "Company Name",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ),
              Text(
                "Type of Company",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ),
              Text(
                "Tons of awesome MERN Stack wallpapers to download for free. You can also upload and share your favorite MERN Stack",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: SizeUtils.height * 0.04,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.width * 0.04,
                    vertical: SizeUtils.height * 0.02),
                child: Column(
                  children: [
                    Text(
                      "Course Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: SizeUtils.height * 0.02),
                    //Previous batch
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeUtils.height * 0.01),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Previous Batch",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Text(
                              "Date",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "01/01/2025",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "To",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "01/01/2025",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Text(
                              "Time",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "10:00AM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "To",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "10:00AM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(height: SizeUtils.height * 0.02),
                    //Current batch
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeUtils.height * 0.01),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Current Batch",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Text(
                              "Date",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "01/01/2025",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "To",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "01/01/2025",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Text(
                              "Time",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "10:00AM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "To",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "10:00AM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(height: SizeUtils.height * 0.02),
                    //Next batch
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeUtils.height * 0.01),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Next Batch",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Text(
                              "Date",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "01/01/2025",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "To",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "01/01/2025",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Text(
                              "Time",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "10:00AM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "To",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.04,
                                ),
                                Text(
                                  "10:00AM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xFF2A2A2A),
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
