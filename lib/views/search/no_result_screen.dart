import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/utils/size_utils.dart';

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
          padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.width * 0.04,
              vertical: SizeUtils.height * 0.01),
          child: Column(
            children: [
              //search bar
              SizedBox(
                height: 40,
                child: TextFormField(
                  cursorColor: Color(0xffffffff),
                  decoration: InputDecoration(
                    fillColor: Color(0xff2A2A2A),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xffffffff).withAlpha(50),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      height: 0,
                      color: Color(0xffffffff).withAlpha(50),
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Color(0xffffffff),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    6, // Creates 6 filter containers
                    (index) => Container(
                      margin: EdgeInsets.all(7),
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: const Color(0xff2A2A2A), // Background color
                        borderRadius:
                            BorderRadius.circular(10), // Rounded edges
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
              SizedBox(
                height: 79,
              ),
              Image.asset(Assets.png.noResultFound.path),
              Text(
                "No Result Found",
                style: TextStyle(fontSize: 25, color: Color(0xFFFCB205)),
              )
            ],
          ),
        ));
  }
}
