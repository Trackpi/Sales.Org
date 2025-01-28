import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/utils/size_utils.dart';

// Custom reusable button widget to avoid repetition
class CategoryButton extends StatelessWidget {
  final String label;
  final String imagePath;
  final String route;

  const CategoryButton({
    Key? key,
    required this.label,
    required this.imagePath,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route); // Navigate to the given route
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.07),
        height: SizeUtils.height * 0.135,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
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
              Colors.black.withAlpha(120), // Apply transparency
              BlendMode.dstATop,
            ),
            image: AssetImage(imagePath),
          ),
        ),
      ),
    );
  }
}

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
            top: SizeUtils.height * 0.05,
          ),
          child: Column(
            spacing: SizeUtils.height * 0.03,
            children: [
              // Using CategoryButton widget for each section
              CategoryButton(
                label: "Forms",
                imagePath: Assets.png.forms.path,
                route: AppRoutes.operationFormPage,
              ),
              CategoryButton(
                label: "To Do List",
                imagePath: Assets.png.todolist.path,
                route: AppRoutes.operationMainPageTodoList,
              ),
              CategoryButton(
                label: "Revenue Graph",
                imagePath: Assets.png.graph.path,
                route: AppRoutes.operationRevenuePage,
              ),
              CategoryButton(
                label: "Payout Calculator",
                imagePath: Assets.png.calculator.path,
                route: "", // Specify route if needed
              ),
              CategoryButton(
                label: "Statements",
                imagePath: Assets.png.statement.path,
                route: "", // Specify route if needed
              ),
              CategoryButton(
                label: "Ticket Raise",
                imagePath: Assets.png.ticket.path,
                route: AppRoutes.openedTicketsPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
