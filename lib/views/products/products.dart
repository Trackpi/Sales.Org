//ps
// for abhijith ps
import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/utils/size_utils.dart';

class Products extends StatelessWidget {
  const Products({super.key});

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
        padding: EdgeInsets.symmetric(
            vertical: SizeUtils.height * 0.02,
            horizontal: SizeUtils.width * 0.03),
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
                    mainAxisExtent: 190,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeUtils.height * 0.01,
                          horizontal: SizeUtils.width * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                right: SizeUtils.width * 0.01,
                                top: SizeUtils.height * 0.005),
                            alignment: Alignment.topRight,
                            height: SizeUtils.height * 0.13,
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
                                    Assets.png.image.path,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Product Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Price : 0000",
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
                    ),
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
