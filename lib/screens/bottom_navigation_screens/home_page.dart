import 'package:flutter/material.dart';

import '../../components/Custom_header.dart';
import '../../components/custome_search_bar.dart';
import '../../components/featured_section.dart';
import '../../components/categories.dart';
import '../../components/slider.dart';
import '../../components/deal_of_the_day.dart';
import '../../components/product_card.dart';

import '../../model/data.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,

        /// 🔹 Drawer
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

        /// 🔹 BODY
        body: SafeArea(
          child: SingleChildScrollView(   // ✅ SCROLL FIX
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// 🔹 Header
                CustomHeader(scaffoldKey: scaffoldKey),

                /// 🔹 Search Bar
                const CustomeSearchBar(),

                /// 🔹 Featured Section
                const FeaturedSection(),

                /// 🔹 Categories
                const Categories(),

                /// 🔹 Banner Slider
                const BannerSlider(),

                /// 🔹 Deal of the Day
                const DealOfTheDay(),

                /// 🔥 PRODUCT LIST (IMPORTANT)
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: products[index],
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                /// 🔹 Bottom Space
                const Center(
                  child: Text("More Coming Soon..."),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}