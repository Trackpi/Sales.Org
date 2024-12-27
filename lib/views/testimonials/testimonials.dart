import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class TestimonialsScreen extends StatelessWidget {
  const TestimonialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            'Testimonials',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            Icon(
              Icons.quiz_outlined,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: SizeUtils.width * 0.05),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.amber,
            dividerColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  'Posters',
                  style: TextStyle(color: Colors.amber, fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Videos',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //posters screen
            GridView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeUtils.width * 0.04,
                  vertical: SizeUtils.height * 0.02),
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
            //videos screen
            GridView.builder(
              padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.height * 0.03,
                  horizontal: SizeUtils.width * 0.03),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 2, // Aspect ratio for card width/height
              ),
              itemCount: 5, // Number of items
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    // Card Container
                    Container(
                      width: double.infinity,
                      height: 193,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://wallpapers.com/images/file/bright-white-background-0jefakp13qzfppzf.jpg')),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    // Bookmark Icon
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Icon(
                        Icons.bookmark,
                        color: Colors.orange,
                        size: 30,
                      ),
                    ),
                    // View Count
                    Positioned(
                      bottom: 10,
                      right: 8,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '10K',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: SizeUtils.width * 0.01),
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.orange,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
