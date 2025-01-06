//for gokul

import 'package:flutter/material.dart';

class SocialMediaDeclarationForm extends StatelessWidget {
  const SocialMediaDeclarationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          title: Text(
            "Social Media Declaration",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: TabBar(
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
                text: "Pending",
              ),
              Tab(
                text: "Approved",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1: Pending
            ListView.builder(
              itemCount: 5, // Number of cards
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    color: Colors.grey[900], // Dark grey card background
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        // Placeholder for the card content
                        Container(
                          height: 150, // Height of the content area
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                            color: Colors.grey, // Black background for the card
                          ),
                        ),
                        // Footer section
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange, // Footer background color
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "01/01/2025",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "View Details",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.open_in_new,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            // Tab 2: Approved
            Center(
              child: ListView.builder(
                itemCount: 5, // Number of cards
                padding: EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Card(
                      color: Colors.grey[900], // Dark grey card background
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          // Placeholder for the card content
                          Container(
                            height: 150, // Height of the content area
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                              color:
                                  Colors.grey, // Black background for the card
                            ),
                          ),
                          // Footer section
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange, // Footer background color
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "01/01/2025",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "View Details",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.open_in_new,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
