//saved
import 'package:flutter/material.dart';

import 'package:sales_org/widgets/brochure_card.dart';

import '../../gen/assets.gen.dart';
import '../../utils/size_utils.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs (Posters and Videos)
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Container(),
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
            //saved companies
            TView('Company Name', 'type of company'),
            //saved products
            TView('Product Name', 'price : 0000'),

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
                return BrochureCard();
              },
            ),
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
          height: SizeUtils.height * 0.02,
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
                childAspectRatio: .75,
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
                      Expanded(
                        child: Text(
                          s,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: Text(
                          t,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
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
