import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/widgets/tab_card.dart';

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
              //cutom widget
              itemBuilder: (context, index) => TabCard(
                  image:
                      "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g",
                  count: "10K"),
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
                return TabCard(
                    isVideo: true,
                    image:
                        "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g",
                    count: "10K");
              },
            )
          ],
        ),
      ),
    );
  }
}
