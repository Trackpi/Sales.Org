//for arjun
import 'package:flutter/material.dart';

class RecentSearchScreen extends StatefulWidget {
  const RecentSearchScreen({super.key});

  @override
  State<RecentSearchScreen> createState() => _RecentSearchScreenState();
}

class _RecentSearchScreenState extends State<RecentSearchScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    //dummy recent searches and top searches

    List<String> recentSearches = [
      "How to add payment method to this app?",
      "How to reset my password?",
      "How to change my account settings?",
      "What is the refund policy?",
      "How to contact customer support?",
      "How to track my order?",
      "How to update my profile information?",
      "How to delete my account?",
      "How to apply for a refund?",
      "What are the app's privacy policies?",
    ];
    List topsearch = [
      "Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your account.",
      "How to add payment method to this app?",
      "How to add payment method to this app?"
    ];
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
          "FAQs",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        //saved questions icon
        actions: [
          Icon(
            Icons.star_outline,
            color: Colors.white,
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "How can we help you?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  //voice search
                  Icon(
                    Icons.mic,
                    color: Colors.white,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 20,
            ),
            //recent searches

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Search",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "Clear all",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.white.withAlpha(90),
                            thickness: 1,
                          ),
                          ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.history,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          softWrap: true,
                                          recentSearches[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.star_outline,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.white.withAlpha(90),
                                    thickness: 1,
                                  ),
                              itemCount:
                                  isExpanded ? recentSearches.length : 5),
                          Divider(
                            color: Colors.white.withAlpha(90),
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    //view all button expands to show all recent searches
                    Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Text(
                          isExpanded ? "Show Less" : "View All",
                          style: TextStyle(
                              color: Color(0xFFFCB205),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //top searches
                    Text(
                      "Top Search",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.white.withAlpha(90),
                            thickness: 1,
                          ),
                          ListView.separated(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.saved_search,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          softWrap: true,
                                          topsearch[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.star_outline,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.white.withAlpha(90),
                                    thickness: 1,
                                  ),
                              itemCount: topsearch.length),
                          Divider(
                            color: Colors.white.withAlpha(90),
                            thickness: 1,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
