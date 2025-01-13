//for abijith
import 'package:flutter/material.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/utils/size_utils.dart';

class ClosedticketsPage extends StatelessWidget {
  const ClosedticketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> ticketDetails = [
      {
        'name': 'Ticket Name',
        'date': '20/12/2024',
        'time': '10:00 AM',
        'status': 'Against Company',
        'company': 'Company Name',
        'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
      },
      {
        'name': 'Ticket Name',
        'date': '20/12/2024',
        'time': '10:00 AM',
        'status': 'Against Company',
        'company': 'Company Name',
        'des': 'Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla.'
      },
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
        body: Padding(
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
                    "Closed Tickets",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.openedTicketsPage);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.folder_open_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: SizeUtils.width * 0.015,
                        ),
                        Text(
                          "Opened",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              TabBar(
                dividerColor: Colors.black,
                indicatorColor: Colors.orange, // Line under the selected tab
                labelColor: Colors.orange, // Selected tab text color
                unselectedLabelColor: Colors.white, // Unselected tab text color
                labelStyle: TextStyle(
                  fontSize: 17, // Font size for selected tab
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 16, // Font size for unselected tabs
                ),
                tabs: [
                  Tab(
                    text: "Against Company",
                  ),
                  Tab(
                    text: "Against Client",
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                  child: TabBarView(children: [
                //against company
                ListView.separated(
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
                                Icons.task_outlined,
                                color: Color(0xFF00AA40),
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
                //against client
                ListView.separated(
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
                                Icons.task_outlined,
                                color: Color(0xFF00AA40),
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
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
