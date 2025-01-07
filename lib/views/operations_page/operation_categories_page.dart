//for arjun
import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/utils/size_utils.dart';

class OperationCategoriesPage extends StatelessWidget {
  const OperationCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeUtils.width * 0.04,
              right: SizeUtils.width * 0.04,
              top: SizeUtils.height * 0.05),
          child: Column(
            spacing: SizeUtils.height * 0.03,
            children: [
              //forms button
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.operationFormPage);
                },
                child: Container(
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
