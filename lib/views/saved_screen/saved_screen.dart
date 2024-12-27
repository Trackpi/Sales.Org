//saved
import 'package:flutter/material.dart';

import 'package:sales_org/views/saved_screen/tabview.dart';

import '../../gen/assets.gen.dart';
import '../../utils/size_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: AppTheme.darkTheme,
      // onGenerateRoute: AppRoutes.generateRoute,
      // initialRoute: AppRoutes.splashScreen,
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Sizer(
          builder: (context, Orientation orientation, DeviceType deviceType) {
            return child ?? const SizedBox();
          }),
      home: SavedScreen(),
    );
  }
}

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs (Posters and Videos)
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
            "Saved", // Title of the screen
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.amber,
            dividerColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  'Companies',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Products',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Brochures',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Testimonials',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Promotions',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //posters screen
            // GridView.builder(
            //   padding: EdgeInsets.symmetric(
            //       horizontal: SizeUtils.width * 0.04,
            //       vertical: SizeUtils.height * 0.02),
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2, // 2 items per row
            //     crossAxisSpacing: 12.0, // Space between items horizontally
            //     mainAxisSpacing: 12.0, // Space between items vertically
            //     childAspectRatio: 0.8, // Adjusts item size aspect ratio
            //   ),
            //   itemCount: 10, // Number of items in the grid
            //   itemBuilder: (context, index) => Stack(
            //     children: [
            //       // Background Container
            //       Container(
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //             fit: BoxFit.cover, // Scales image to fit container
            //             image: AssetImage("assets/png/company.png"),
            //           ),
            //           color: Colors.white,
            //           borderRadius:
            //           BorderRadius.circular(10), // Rounded corners
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.grey.withOpacity(0.5), // Shadow color
            //               spreadRadius: 2, // Shadow spread
            //               blurRadius: 5, // Shadow blur
            //               offset: Offset(0, 3), // Position of shadow
            //             ),
            //           ],
            //         ),
            //         padding:
            //         const EdgeInsets.all(8.0), // Padding inside container
            //       ),
            //       // Save Icon at the Top Right
            //       Positioned(
            //         top: 2,
            //         right: 5,
            //         child: IconButton(
            //           onPressed: () {
            //             // Save action goes here
            //           },
            //           icon: Icon(
            //             Icons.bookmark,
            //             color: Color(0xffFFB300), // Icon color
            //           ),
            //         ),
            //       ),
            //       // Eye Icon at the Bottom Right
            //       Positioned(
            //         bottom: 10,
            //         right: 10,
            //         child: Row(
            //           children: [
            //             Text(
            //               "10K", // View count text
            //               style: TextStyle(
            //                 color: Color(0xffFFB300), // Text color
            //                 fontSize: 13,
            //               ),
            //             ),
            //             Icon(
            //               Icons.share,
            //               size: 13, // Icon size
            //               color: Color(0xffFFB300), // Icon color
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            //saved companies
            TView('Cpmpany Name', 'type of company'),
            //saved products
            TView('Product Name','price : 0000'),

            //brochures screen
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
                return Container(
                 decoration: BoxDecoration(
                     color: Color(0xFFFCB205),

                     borderRadius: BorderRadius.circular(10)
                 ),
                  child: Stack(
                    children: [
                      // Card Container
                      Container(
                        width: double.infinity,
                        height: 193,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage("assets/png/company.png")),
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
                      Positioned(
                        bottom: 10,
                        left: 8,
                        child: Text('Brochures')
                      ),

                      Positioned(
                        bottom: 10,
                        right: 8,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.file_download_outlined,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            TabView(),
            TabView()
          ],
        ),
      ),
    );
  }
}
class TView extends StatelessWidget {
  final String s;

  final String t;

  const TView(this.s, this.t, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeUtils.height*0.01,
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(
                vertical: SizeUtils.height * 0.03,
                horizontal: SizeUtils.width * 0.03),
            itemCount: 15,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(
                      vertical: SizeUtils.height * 0.01,
                      horizontal: SizeUtils.width * 0.02),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            right: SizeUtils.width * 0.01,
                            top: SizeUtils.height * 0.005),
                        alignment: Alignment.topRight,
                        height: SizeUtils.height * 0.2,
                        //save button
                        child: Icon(
                          Icons.bookmark_outline,
                          color: Color(0xFFFCB205),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                Assets.png.company.path,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        s,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        t,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      )
                    ],
                  ),

                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
