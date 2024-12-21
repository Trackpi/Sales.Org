import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
//appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
//back button
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 25,
        ),
        centerTitle: true,
        title: Text(
          "Search",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
//faq icon
        actions: [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
//voice search
                  Icon(
                    Icons.mic,
                    color: Colors.white,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Our Companies",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 180,
              child: Expanded(
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
                    return Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      height: 170,
                      width: 171,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 5, top: 5),
                            alignment: Alignment.topRight,
                            height: 112,
                            width: 178,
                            //favourite button
                            child: Icon(
                              Icons.bookmark_outline,
                              color: Color(0xFFFCB205),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/png/company.png"))),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Company Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Type of company",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF2A2A2A),
                          borderRadius: BorderRadius.circular(10)),
                    );
                  },
                ),
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
            Container(
              height: 180,
              child: Expanded(
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
                    return Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      height: 170,
                      width: 171,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 5, top: 5),
                            alignment: Alignment.topRight,
                            height: 112,
                            width: 178,
                            //favourite button
                            child: Icon(
                              Icons.bookmark_outline,
                              color: Color(0xFFFCB205),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/png/image.png"))),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Product Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "price: 0000",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF2A2A2A),
                          borderRadius: BorderRadius.circular(10)),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
