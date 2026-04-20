import 'package:flutter/material.dart';

import '../../components/Custom_header.dart';
import '../../components/custome_search_bar.dart';
import '../../components/featured_section.dart';
import '../../components/categories.dart';
import '../../components/slider.dart';
import '../../components/deal_of_the_day.dart';
import '../../components/product_card.dart';
import '../../components/special_offer.dart';
import '../../model/data.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

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
          child: Column(
            children: [

              /// 🔹 FIXED PART
              CustomHeader(scaffoldKey: scaffoldKey),
              const CustomeSearchBar(),

              /// 🔥 SCROLLABLE PART
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const FeaturedSection(),
                      const Categories(),
                      const BannerSlider(),
                      Center(child: const DealOfTheDay()),

                      const SizedBox(height: 10),

                      /// 🔥 PRODUCT LIST
                      SizedBox(
                        height: 180,
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
                      Center(child: SpecialOffer()),
                      const BannerSlider(),

                      SizedBox(
                        height: 180,
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

                      /// 🔹 Bottom Text
                      const Center(
                        child: Text("More Coming Soon..."),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}