import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/widgets/grid_cards.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,

        centerTitle: true,
        title: Text(
          "Companies",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        //notifications icon
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
          SizedBox(
            // width: 25,
            width: SizeUtils.width * 0.045,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.width * 0.04,
            vertical: SizeUtils.height * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //search bar
            SizedBox(
              // height: 40,
              height: SizeUtils.height * 0.05,

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
              // height: 20,
              height: SizeUtils.height * 0.03,
            ),
            Text(
              "Choose Company",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              // height: 15,
              height: SizeUtils.height * 0.02,
            ),
            //list of companies
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
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.companyProfile);
                    },
                    //custom widegt
                    child: GridCards(
                        needSavebutton: true,
                        title: "Company Name",
                        url: Assets.png.company.path,
                        subtitle: "Type of Company"),
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
//for arjun
