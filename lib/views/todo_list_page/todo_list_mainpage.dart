//deekshith

import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class TodoListMainpage extends StatelessWidget {
  const TodoListMainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Floating Action Button for adding a new note
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.note_add_outlined,
            color: Colors.white,
          ),
          backgroundColor: Colors.amber,
          shape: CircleBorder(),
          onPressed: () {
            // Action when the button is pressed
          },
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(
          // Back button to navigate to the previous screen
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context); // Pops the current screen
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          actions: [
            // Search icon in the app bar
            IconButton(
                onPressed: () {
                  // Action for search functionality
                },
                icon:
                    Icon(Icons.search_outlined, color: Colors.white, size: 30))
          ],
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'To Do List', // Title of the app bar
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
            // Padding for the entire content
            padding: EdgeInsets.symmetric(
                horizontal: SizeUtils.width * 0.03,
                vertical: SizeUtils.height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Menu icon
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: SizeUtils.width * 0.008,
                    ),
                    // "Date Modified" text with tap action
                    InkWell(
                      onTap: () {
                        // Action when "Date Modified" is tapped
                      },
                      child: Text(
                        "Date Modified",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: SizeUtils.width * 0.05,
                    ),
                    // Completed icon
                    Icon(
                      Icons.inventory_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: SizeUtils.width * 0.008,
                    ),
                    // "Completed" text with tap action
                    InkWell(
                      onTap: () {
                        // Action when "Completed" is tapped
                      },
                      child: Text("Completed",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ),
                    SizedBox(
                      width: SizeUtils.width * 0.03,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeUtils.height * 0.02,
                ),
                // List of To-Do items
                Expanded(
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeUtils.width * 0.02,
                                vertical: SizeUtils.height * 0.01),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    // Title of the to-do item
                                    Text(
                                      "Meeting",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 16),
                                    ),
                                    Spacer(),
                                    // Date and time of the to-do item
                                    Text(
                                      "20/12/2024",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: SizeUtils.width * 0.008,
                                    ),
                                    Text(
                                      "-",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      " 10.00 AM ",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: SizeUtils.height * 0.008,
                                ),
                                // Location of the to-do item
                                Text(
                                  " At the Company ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                                SizedBox(
                                  height: SizeUtils.height * 0.010,
                                ),
                                // Description of the to-do item
                                Text(
                                  "Lorem ipsum dolor sit amet consectetur. Ipsum dui nulla",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ),
                            height: SizeUtils.height * 0.12,
                            width: SizeUtils.width * 0.1,
                            decoration: BoxDecoration(
                                color: Color(0xff2A2A2A), // Background color
                                border: Border.all(
                                  width: 2,
                                  color: Colors.green, // Border color
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            height: SizeUtils.height * 0.01,
                          ),
                      itemCount: 8), // Number of to-do items
                ),
              ],
            )));
  }
}
