import 'package:flutter/material.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/widgets/brochure_card.dart';
import 'package:sales_org/widgets/listview_cards.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Company Profile",
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
                "Company Name",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ),
              Text(
                "Type of Company",
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
              BrochureCard(),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              //products
              Row(
                children: [
                  Text(
                    "Products",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.products);
                    },
                    child: Text(
                      "View More",
                      style: TextStyle(
                          color: Color(0xFFFCB205),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.02,
              ),
              SizedBox(
                height: SizeUtils.height * 0.20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: SizeUtils.width * 0.02),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.productsProfile);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //custom widgets
                            ListviewCards(
                                url:
                                    "https://images.prismic.io/loco-blogs/79328284-f97b-489f-924c-eb3b17e34b56_image2.png?auto=compress%2Cformat&rect=0%2C0%2C1999%2C1124&w=1920&h=1080&ar=1.91%3A1"),
                            SizedBox(
                              height: SizeUtils.height * 0.01,
                            ),
                            Text(
                              "Product Name",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              //promotion materials
              Row(
                children: [
                  Text(
                    "Promotion Materials",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.promotionPhotos);
                    },
                    child: Text(
                      "View More",
                      style: TextStyle(
                          color: Color(0xFFFCB205),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
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
                      //custom widget
                      child: ListviewCards(
                          url:
                              "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g"),
                    );
                  },
                ),
              ),
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
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.testimonials);
                    },
                    child: Text(
                      "View More",
                      style: TextStyle(
                          color: Color(0xFFFCB205),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
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
                      //custom widget
                      child: ListviewCards(
                          url:
                              "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g"),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.posters);
                    },
                    child: Text(
                      "View More",
                      style: TextStyle(
                          color: Color(0xFFFCB205),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
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
                      //custom widget
                      child: ListviewCards(
                          isPoster: true,
                          url:
                              "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g"),
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
