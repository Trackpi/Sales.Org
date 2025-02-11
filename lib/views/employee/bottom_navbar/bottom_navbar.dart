import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:sales_org/views/faqs_screen/recent_search_screen.dart';
import 'package:sales_org/views/employee/home_screen/home_screen.dart';
import 'package:sales_org/views/operations_page/operation_categories_page.dart';
import 'package:sales_org/views/saved_screen/saved_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 0;
  List<Widget> myscreens = [
    HomeScreen(),
    OperationCategoriesPage(),
    RecentSearchScreen(),
    SavedScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: myscreens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xFFFCB205),
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            backgroundColor: Colors.black,
            currentIndex: selectedIndex,
            selectedLabelStyle: TextStyle(fontSize: 16),
            unselectedLabelStyle: TextStyle(fontSize: 14),
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    LucideIcons.house,
                    size: 25,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(
                  LucideIcons.briefcaseBusiness,
                  size: 25,
                ),
                label: "Operations",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    LucideIcons.circleHelp,
                    size: 25,
                  ),
                  label: "FAQs"),
              BottomNavigationBarItem(
                  icon: Icon(
                    LucideIcons.bookmark,
                    size: 25,
                  ),
                  label: "Saved"),
            ]),
      ),
    );
  }
}
