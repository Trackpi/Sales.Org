// for abhijith ps
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
            "Products",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
//faq icon
          actions: [
            Icon(
              Icons.quiz_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 25,
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeUtils.height*0.015, vertical: SizeUtils.height*0.015),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//search bar
              Container(
                padding: EdgeInsets.symmetric(horizontal: SizeUtils.height*0.01, vertical: SizeUtils.height*0.01),
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
              Expanded(
                child: GridView.builder(
                  itemCount: 15,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 180,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: SizeUtils.height*0.005, horizontal: SizeUtils.height*0.01),
                      height: 170,
                      width: 171,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: SizeUtils.height*0.005, top:SizeUtils.height*0.005),
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
                                    AssetImage("assets/images/company.png"))),
                          ),
                          SizedBox(
                            height: SizeUtils.height*0.01,
                          ),
                          Text(
                            "Product Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: SizeUtils.height*0.01,
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
            ],
          ),
        ),
      );
  }
}
