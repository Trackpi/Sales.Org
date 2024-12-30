//for arjun
import 'package:flutter/material.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/views/faqs_screen/widgets/list_tile.dart';

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

    final List<Map<String, String>> recentSearches = [
      {
        "question": "How to add payment method to this app?",
        "answer":
            "To add a payment method, go to Settings > Payment Methods > Add."
      },
      {
        "question": "How to reset my password?",
        "answer":
            "Click on 'Forgot Password' on the login screen and follow the instructions."
      },
      {
        "question": "How to change my account settings?",
        "answer":
            "Navigate to Settings and select the options you want to modify."
      },
      {
        "question": "What is the refund policy?",
        "answer":
            "Refunds are processed within 7 business days. Terms and conditions apply."
      },
      {
        "question": "How to contact customer support?",
        "answer":
            "You can reach customer support via the Help Center in the app."
      },
      {
        "question": "How to add payment method to this app?",
        "answer":
            "To add a payment method, go to Settings > Payment Methods > Add."
      },
      {
        "question": "How to reset my password?",
        "answer":
            "Click on 'Forgot Password' on the login screen and follow the instructions."
      },
      {
        "question": "How to change my account settings?",
        "answer":
            "Navigate to Settings and select the options you want to modify."
      },
      {
        "question": "What is the refund policy?",
        "answer":
            "Refunds are processed within 7 business days. Terms and conditions apply."
      },
      {
        "question": "How to contact customer support?",
        "answer":
            "You can reach customer support via the Help Center in the app."
      },
    ];

    final List<Map<String, String>> topSearches = [
      {
        "question": "How to track my order?",
        "answer": "Go to 'Orders' and select the order you want to track."
      },
      {
        "question": "How to update my profile information?",
        "answer": "Visit the Profile section and click 'Edit Profile'."
      },
      {
        "question": "What are the app's privacy policies?",
        "answer":
            "You can find our privacy policies under the 'Legal' section in Settings."
      },
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(null),
        centerTitle: true,
        title: Text(
          "FAQs",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        //saved questions icon
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.faqSaved);
            },
            child: Icon(
              Icons.star_outline,
              color: Colors.white,
            ),
          ),
          SizedBox(
            // width: 25,
            width: SizeUtils.width * 0.04,
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
              child: Text(
                "How can we help you?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              // height: 15,
              height: SizeUtils.height * 0.02,
            ),
            //search bar
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.faqSearch);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.width * 0.03,
                    vertical: SizeUtils.height * 0.01),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: SizeUtils.width * 0.02,
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
            ),
            SizedBox(
              // height: 20,
              height: SizeUtils.height * 0.03,
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
                      // height: 10,
                      height: SizeUtils.height * 0.01,
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
                                return ExpansionTile(
                                  trailing: Icon(
                                    Icons.star_outline,
                                    color: Colors.white,
                                  ),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.history,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        // width: 5,
                                        width: SizeUtils.width * 0.02,
                                      ),
                                      Expanded(
                                        child: Text(
                                          softWrap: true,
                                          recentSearches[index]['question']!,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                  children: [
                                    Text(
                                      recentSearches[index]['answer']!,
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
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
                      // height: 10,
                      height: SizeUtils.height * 0.01,
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
                      // height: 30,
                      height: SizeUtils.height * 0.04,
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
                      // height: 10,
                      height: SizeUtils.height * 0.01,
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
                              itemBuilder: (context, index) => ExpansionTile(
                                    trailing: Icon(
                                      Icons.star_outline,
                                      color: Colors.white,
                                    ),
                                    children: [
                                      Text(
                                        topSearches[index]['answer']!,
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                    title: List_tile(
                                      isExpanded: true,
                                      trailingIcon: Icons.star_outline,
                                      leadingIcon: Icons.saved_search,
                                      text: topSearches[index]['question']!,
                                    ),
                                  ),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.white.withAlpha(90),
                                    thickness: 1,
                                  ),
                              itemCount: topSearches.length),
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
