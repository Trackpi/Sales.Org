
import 'package:flutter/material.dart';

class Posters extends StatelessWidget {
  const Posters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0A0A),
      appBar: AppBar(
        backgroundColor: Color(0xff0A0A0A),
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xffffffff),
        ),
        centerTitle: true,
        title: Text(
          "Posters",
          style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.quiz_outlined,
            color: Color(0xffffffff),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Color(0xffffffff),
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 23),
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 210),
        itemBuilder: (context, index) => Stack(
          children: [
            Container(
              height: 210,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/posters_image.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
            //bookmark
            Positioned(
              right: 16,
              top: 15,
              child: Icon(
                index == 0 ? Icons.bookmark : Icons.bookmark_outline,
                size: 24,
                color: Color(0xffFFB300),
              ),
            ),
            //views count
            Positioned(
              bottom: 10,
              right: 10,
              child: Row(
                children: [
                  Text(
                    "10K",
                    style: TextStyle(
                        color: Color(0xffFFB300),
                        fontSize: 8,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.visibility_outlined,
                    color: Color(0xffFFB300),
                    size: 13,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
