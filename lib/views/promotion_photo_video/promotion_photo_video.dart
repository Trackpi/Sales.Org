import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class PromotionPhotoVideo extends StatelessWidget {
  const PromotionPhotoVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs (Posters and Videos)
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous screen
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white, // Icon color
            ),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {}, // Action for the quiz icon
                  icon: Icon(
                    Icons.quiz_outlined,
                    color: Colors.white, // Icon color
                  ),
                ),
                IconButton(
                  onPressed: () {}, // Action for the search icon
                  icon: Icon(
                    Icons.search,
                    color: Colors.white, // Icon color
                  ),
                ),
              ],
            ),
          ],
          backgroundColor: Colors.black, // AppBar background color
          title: Text(
            "Promotion", // Title of the screen
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          bottom: TabBar(
            indicatorColor: Color(0xffFFB300), // Color of the tab indicator
            labelColor: Color(0xffFFB300), // Color for selected tab
            unselectedLabelColor: Colors.grey, // Color for unselected tabs
            tabs: [
              Tab(
                text: "Posters", // Name of the first tab
              ),
              Tab(
                text: "Videos", // Name of the second tab
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeUtils.height * 0.02,
              horizontal: SizeUtils.width * 0.02),
          child: TabBarView(
            children: [
              // First Tab: Posters
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  crossAxisSpacing: 12.0, // Space between items horizontally
                  mainAxisSpacing: 12.0, // Space between items vertically
                  childAspectRatio: 0.8, // Adjusts item size aspect ratio
                ),
                itemCount: 10, // Number of items in the grid
                itemBuilder: (context, index) => Stack(
                  children: [
                    // Background Container
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover, // Scales image to fit container
                          image: NetworkImage(
                            "https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          ),
                        ),
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Shadow spread
                            blurRadius: 5, // Shadow blur
                            offset: Offset(0, 3), // Position of shadow
                          ),
                        ],
                      ),
                      padding:
                          const EdgeInsets.all(8.0), // Padding inside container
                    ),
                    // Save Icon at the Top Right
                    Positioned(
                      top: 2,
                      right: 5,
                      child: IconButton(
                        onPressed: () {
                          // Save action goes here
                        },
                        icon: Icon(
                          Icons.bookmark,
                          color: Color(0xffFFB300), // Icon color
                        ),
                      ),
                    ),
                    // Eye Icon at the Bottom Right
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Row(
                        children: [
                          Text(
                            "10K", // View count text
                            style: TextStyle(
                              color: Color(0xffFFB300), // Text color
                              fontSize: 13,
                            ),
                          ),
                          Icon(
                            Icons.remove_red_eye_outlined,
                            size: 13, // Icon size
                            color: Color(0xffFFB300), // Icon color
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Second Tab: Videos
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  crossAxisSpacing: 10.0, // Space between items horizontally
                  mainAxisSpacing: 10.0, // Space between items vertically
                  childAspectRatio: 0.8, // Adjusts item size aspect ratio
                ),
                itemCount: 10, // Number of items in the grid
                itemBuilder: (context, index) => Stack(
                  children: [
                    // Background Container
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover, // Scales image to fit container
                          image: NetworkImage(
                            "https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          ),
                        ),
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Shadow spread
                            blurRadius: 5, // Shadow blur
                            offset: Offset(0, 3), // Position of shadow
                          ),
                        ],
                      ),
                      padding:
                          const EdgeInsets.all(8.0), // Padding inside container
                    ),
                    // Save Icon at the Top Right
                    Positioned(
                      top: 2,
                      right: 5,
                      child: IconButton(
                        onPressed: () {
                          // Save action goes here
                        },
                        icon: Icon(
                          Icons.bookmark,
                          color: Color(0xffFFB300), // Icon color
                        ),
                      ),
                    ),
                    // Eye Icon at the Bottom Right
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Row(
                        children: [
                          Text(
                            "10K", // View count text
                            style: TextStyle(
                              color: Color(0xffFFB300), // Text color
                              fontSize: 13,
                            ),
                          ),
                          Icon(
                            Icons.remove_red_eye_outlined,
                            size: 13, // Icon size
                            color: Color(0xffFFB300), // Icon color
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
