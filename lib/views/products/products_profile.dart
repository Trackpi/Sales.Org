import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class ProductsProfile extends StatelessWidget {
  const ProductsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Product",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          const Icon(
            Icons.quiz_outlined,
            color: Colors.white,
          ),
          SizedBox(width: SizeUtils.width * 0.015),
          const Icon(
            Icons.bookmark_outline,
            color: Colors.white,
          ),
          SizedBox(width: SizeUtils.width * 0.03),
        ],
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.width * 0.04,
              vertical: SizeUtils.height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //company image
              Container(
                height: SizeUtils.height * 0.228,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g"))),
              ),
              SizedBox(
                height: SizeUtils.height * 0.015,
              ),
              Text(
                "Mern Stack ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ),
              Text(
                "Price: ₹45000/-",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ),
              Text(
                "Tons of awesome MERN Stack wallpapers to download for free. You can also upload and share your favorite MERN Stack",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              //brochure
              Container(
                  height: SizeUtils.height * 0.2,
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeUtils.width * 0.04,
                              vertical: SizeUtils.height * 0.012),
                          alignment: Alignment.topRight,
                          height: SizeUtils.height * 0.16,
                          child: Icon(
                            Icons.bookmark,
                            size: 30,
                            color: Color(0xFFFCB205),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF2A2A2A),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          )),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeUtils.width * 0.035,
                            vertical: SizeUtils.height * 0.005),
                        child: Row(
                          children: [
                            Text(
                              "Brochure Name",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                            Spacer(),
                            Icon(
                              Icons.download_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.share,
                              size: 20,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFCB205),
                    borderRadius: BorderRadius.circular(10),
                  )),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              //testimonials materials
              Row(
                children: [
                  Text(
                    "Testimonials Materials",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    "View More",
                    style: TextStyle(
                        color: Color(0xFFFCB205),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.02,
              ),
              SizedBox(
                height: SizeUtils.height * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: SizeUtils.width * 0.02),
                      child: Container(
                        width: SizeUtils.width * 0.47,
                        height: SizeUtils.height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g",
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              //posters
              Row(
                children: [
                  Text(
                    "Posters",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    "View More",
                    style: TextStyle(
                        color: Color(0xFFFCB205),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.02,
              ),
              SizedBox(
                height: SizeUtils.height * 0.19,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: SizeUtils.width * 0.025),
                      child: Container(
                        width: SizeUtils.width * 0.35,
                        height: SizeUtils.height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g",
                            ),
                          ),
                        ),
                      ),
                    );
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
