import 'package:flutter/material.dart';

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
          leading: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
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
            SizedBox(width: 15),
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
            GridView.builder(
              padding: EdgeInsets.all(16),
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
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        'https://wallpapers.com/images/file/bright-white-background-0jefakp13qzfppzf.jpg',
                        fit: BoxFit.cover,
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
                          SizedBox(width: 4),
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
            ),
            GridView.builder(
              padding: EdgeInsets.all(16),
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
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        'https://wallpapers.com/images/file/bright-white-background-0jefakp13qzfppzf.jpg',
                        fit: BoxFit.cover,
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
                          SizedBox(width: 4),
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
