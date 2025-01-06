//for arjun
import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/utils/size_utils.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          "Operations",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: SizeUtils.width * 0.055,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.width * 0.04,
              vertical: SizeUtils.height * 0.01),
          child: Column(
            children: [
              //forms button
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.07),
                height: SizeUtils.height * 0.135,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Forms",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 22,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withAlpha(
                              120), // Make the image slightly transparent
                          BlendMode.dstATop,
                        ),
                        image: AssetImage(Assets.png.forms.path))),
              ),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              //todolist button
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.07),
                height: SizeUtils.height * 0.135,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "To Do List",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 22,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withAlpha(
                              120), // Make the image slightly transparent
                          BlendMode.dstATop,
                        ),
                        image: AssetImage(Assets.png.todolist.path))),
              ),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              //revenue graph button
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.07),
                height: SizeUtils.height * 0.135,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Revenue Graph",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 22,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withAlpha(
                              80), // Make the image slightly transparent
                          BlendMode.dstATop,
                        ),
                        image: AssetImage(Assets.png.graph.path))),
              ),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              //payout calculator
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.07),
                height: SizeUtils.height * 0.135,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payout Calculator",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 22,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withAlpha(
                              90), // Make the image slightly transparent
                          BlendMode.dstATop,
                        ),
                        image: AssetImage(Assets.png.calculator.path))),
              ),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              //statement
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.07),
                height: SizeUtils.height * 0.135,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Statements",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 22,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withAlpha(
                              80), // Make the image slightly transparent
                          BlendMode.dstATop,
                        ),
                        image: AssetImage(Assets.png.statement.path))),
              ),
              SizedBox(
                height: SizeUtils.height * 0.03,
              ),
              //ticket raise
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.07),
                height: SizeUtils.height * 0.135,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ticket Raise",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 22,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withAlpha(
                              80), // Make the image slightly transparent
                          BlendMode.dstATop,
                        ),
                        image: AssetImage(Assets.png.ticket.path))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
