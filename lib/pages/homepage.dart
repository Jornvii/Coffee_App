import 'package:flutter/material.dart';
import 'package:flutter_shoping_app/pages/menu_page.dart';
import 'package:flutter_shoping_app/pages/setting_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  late final List<Widget> page;
  @override
  void initState() {
    page = [
      MenuPage(),
      navBarPage(
        Icons.shopping_bag_outlined,
      ),
      SettingsPage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          textStyle:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          activeColor: Colors.amber[900],
          tabBackgroundColor: Colors.orange.shade50,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          // padding: EdgeInsets.all(12),

          tabs: const [
            GButton(
              icon: Icons.menu_book_outlined,
              text: "Menu",
              iconSize: 30,
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: "Cart",
              iconSize: 30,
            ),
            GButton(
              icon: Icons.settings_outlined,
              text: "Setting",
              iconSize: 30,
            ),
          ],
          onTabChange: (index) => {
            setState(() {
              selectedIndex = index;
            })
          },
        ),
      ),
      body: page[selectedIndex],
    );
  }

  navBarPage(iconName) {
    return Center(
        child: Icon(
      iconName,
      size: 100,
      color: Colors.black,
    ));
  }
}
