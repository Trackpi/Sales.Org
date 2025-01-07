import 'package:flutter/material.dart';
import 'package:sales_org/views/faqs_screen/recent_search_screen.dart';
import 'package:sales_org/views/home_screen/home_screen.dart';
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
    return Scaffold(
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
                  Icons.home,
                  size: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  size: 30,
                  Icons.dashboard_outlined,
                ),
                label: "Operations"),
            BottomNavigationBarItem(
                icon: Icon(
                  size: 30,
                  Icons.quiz_outlined,
                ),
                label: "FAQs"),
            BottomNavigationBarItem(
                icon: Icon(
                  size: 30,
                  Icons.bookmark_outline,
                ),
                label: "Saved"),
          ]),
    );
  }
}
