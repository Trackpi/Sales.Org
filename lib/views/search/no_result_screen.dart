import 'package:flutter/material.dart';

// A StatelessWidget representing the No Result Screen
class NoResultScreen extends StatelessWidget {
  const NoResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Sets the background color of the screen to black
      backgroundColor: Colors.black,
      appBar: AppBar(
        // Sets the AppBar background color to black
        backgroundColor: Colors.black,
        // Centers the title within the AppBar
        centerTitle: true,
        // Adds a back button on the AppBar to navigate back to the previous screen
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        // Adds a filter button on the right side of the AppBar
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
          )
        ],
        // Sets the title text for the AppBar
        title: Text(
          'Search',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // A search input field
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xff2A2A2A), // Background color for the field
                hintText: 'Search', // Placeholder text
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ), // Icon displayed before the input text
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
                suffixIcon: IconButton(
                  onPressed: () {}, // Action for the mic button
                  icon: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15), // Space between elements
            // A horizontally scrollable row of filter containers
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  6, // Creates 6 filter containers
                  (index) => Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: const Color(0xff2A2A2A), // Background color
                      borderRadius: BorderRadius.circular(10), // Rounded edges
                    ),
                    height: 32, // Height of the filter container
                    width: 70, // Width of the filter container
                    child: Center(
                      child: Text(
                        "Product", // Text inside each filter container
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 80), // Additional space
            // Center content for displaying a "No Result Found" message
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image displayed at the center
                Image(image: AssetImage('assets/images/no_result.png')),
                // Text displayed below the image
                Text(
                  "No Result Found",
                  style: TextStyle(
                    color: Color(0xffFFB300), // Text color
                    fontSize: 24, // Font size
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
