import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/widgets/tab_card.dart';

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
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.amber,
            dividerColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  'Posters',
                  style: TextStyle(color: Colors.white, fontSize: 18),
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
                //custom widget
                itemBuilder: (context, index) => TabCard(
                    image:
                        "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g",
                    count: "10K")),
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
                //custom widget
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
