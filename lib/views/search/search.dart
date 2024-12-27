import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/widgets/grid_cards.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
//appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Search",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
//faq icon
        actions: [
          Icon(
            Icons.filter_list,
            color: Colors.white,
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.width * 0.04,
              vertical: SizeUtils.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 20,
              ),
              Text(
                "Choose Company",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              //list of companies
              Container(
                height: SizeUtils.height * 0.22,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 180,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return GridCards(
                        title: "Company Name",
                        needSavebutton: true,
                        url: Assets.png.company.path,
                        subtitle: "Type of Company");
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Our Products",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              //list of products
              Container(
                height: SizeUtils.height * 0.21,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 180,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return GridCards(
                        needSavebutton: true,
                        title: "Product Name",
                        url: Assets.png.image.path,
                        subtitle: "Price: 0000");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
