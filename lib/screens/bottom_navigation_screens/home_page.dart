import 'package:flutter/material.dart';
import 'package:stylish/components/custome_search_bar.dart';

import '../../components/Custom_header.dart';
import '../../components/featured_section.dart';

/// 🔹 MAIN SCREEN
class HomePage extends StatelessWidget {
  HomePage({super.key});

  /// 👉 Drawer control ke liye key
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // keyboard hide
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,

        /// 🔹 Side Drawer
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                child: Text(
                  "Menu",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),

        /// 🔹 Main Content
        body: SafeArea(
          child: Column(
            children: [
              /// 🔹 Header
              CustomHeader(scaffoldKey: scaffoldKey),

              /// 🔹 Search Bar
              CustomeSearchBar(),

              /// 🔹 Featured Section
              FeaturedSection(),

              /// 🔹 Remaining Area
              const Expanded(
                child: Center(
                  child: Text("Home Screen"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}