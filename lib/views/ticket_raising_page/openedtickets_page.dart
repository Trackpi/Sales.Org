//for arjun
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class OpenedticketsPage extends StatefulWidget {
  const OpenedticketsPage({super.key});

  @override
  State<OpenedticketsPage> createState() => _OpenedticketsPageState();
}

class _OpenedticketsPageState extends State<OpenedticketsPage> {
  bool showButtons = false;

  List<Map> ticketDetails = [
    {
      'name': 'Ticket Name',
      'date': '20/12/2024',
      'time': '10:00 AM',
      'status': 'Against Client',
      'company': 'Company Name',
      'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
    },
    {
      'name': 'Ticket Name',
      'date': '20/12/2024',
      'time': '10:00 AM',
      'status': 'Against Client',
      'company': 'Company Name',
      'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
    },
    {
      'name': 'Ticket Name',
      'date': '20/12/2024',
      'time': '10:00 AM',
      'status': 'Against Client',
      'company': 'Company Name',
      'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
    },
    {
      'name': 'Ticket Name',
      'date': '20/12/2024',
      'time': '10:00 AM',
      'status': 'Against Client',
      'company': 'Company Name',
      'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
    },
    {
      'name': 'Ticket Name',
      'date': '20/12/2024',
      'time': '10:00 AM',
      'status': 'Against Client',
      'company': 'Company Name',
      'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
    },
    {
      'name': 'Ticket Name',
      'date': '20/12/2024',
      'time': '10:00 AM',
      'status': 'Against Client',
      'company': 'Company Name',
      'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
    },
    {
      'name': 'Ticket Name',
      'date': '20/12/2024',
      'time': '10:00 AM',
      'status': 'Against Client',
      'company': 'Company Name',
      'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
    },
    {
      'name': 'Ticket Name',
      'date': '20/12/2024',
      'time': '10:00 AM',
      'status': 'Against Client',
      'company': 'Company Name',
      'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
    },
    {
      'name': 'Ticket Name',
      'date': '20/12/2024',
      'time': '10:00 AM',
      'status': 'Against Client',
      'company': 'Company Name',
      'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
    },
    {
      'name': 'Ticket Name',
      'date': '20/12/2024',
      'time': '10:00 AM',
      'status': 'Against Client',
      'company': 'Company Name',
      'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Ticket Raise",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: SizeUtils.width * 0.04,
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeUtils.width * 0.04,
                vertical: SizeUtils.height * 0.015),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Opened Tickets",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.task_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: SizeUtils.width * 0.015,
                        ),
                        Text(
                          "Closed",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: SizeUtils.height * 0.03,
                ),
                SizedBox(
                  height: SizeUtils.height * 0.62,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeUtils.width * 0.03,
                            vertical: SizeUtils.height * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.folder_open_outlined,
                                  color: Color(0xFFFCB205),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.032,
                                ),
                                Text(
                                  ticketDetails[index]['name'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.2,
                                ),
                                Expanded(
                                  child: Text(
                                    "${ticketDetails[index]['date']}  - ${ticketDetails[index]['time']}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(),
                                Text(
                                  ticketDetails[index]['status'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                                SizedBox(
                                  width: SizeUtils.width * 0.035,
                                ),
                                Text(
                                  ticketDetails[index]['company'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                                SizedBox()
                              ],
                            ),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Text(
                              ticketDetails[index]['des'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFF2A2A2A),
                            borderRadius: BorderRadius.circular(15)),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      height: SizeUtils.height * 0.015,
                    ),
                    itemCount: ticketDetails.length,
                  ),
                ),
                // SizedBox(
                //   height: 400,
                // ),
              ],
            ),
          ),
          // CircleAvatar and buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (showButtons)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //against clinet
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //navigate
                            },
                            child: CircleAvatar(
                              radius: SizeUtils.width * 0.06,
                              backgroundColor: Color(0xFFFCB205),
                              child: Icon(
                                Icons.accessibility,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeUtils.height * 0.008,
                          ),
                          Text(
                            "Against Clients",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                        ],
                      ),
                      //against company
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //navigate
                            },
                            child: CircleAvatar(
                              radius: SizeUtils.width * 0.06,
                              backgroundColor: Color(0xFFFCB205),
                              child: Icon(
                                Icons.apartment_outlined,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeUtils.height * 0.008,
                          ),
                          Text(
                            "Against Company",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                // SizedBox(height: SizeUtils.height * 0.02),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showButtons = !showButtons;
                    });
                  },
                  child: CircleAvatar(
                    radius: SizeUtils.width * 0.06,
                    backgroundColor: Color(0xFFFCB205),
                    child: Icon(
                      Icons.add_box_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeUtils.height * 0.04,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
