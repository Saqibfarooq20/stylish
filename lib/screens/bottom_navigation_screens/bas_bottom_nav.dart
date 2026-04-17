import 'package:flutter/material.dart';
import 'package:stylish/screens/bottom_navigation_screens/cart.dart';
import 'package:stylish/screens/bottom_navigation_screens/home_page.dart';
import 'package:stylish/screens/bottom_navigation_screens/search.dart';
import 'package:stylish/screens/bottom_navigation_screens/settings.dart';
import 'package:stylish/screens/bottom_navigation_screens/wishlist.dart';

class BasBottomNav extends StatefulWidget {
  const BasBottomNav({super.key});

  @override
  State<BasBottomNav> createState() => _BasBottomNavState();
}

class _BasBottomNavState extends State<BasBottomNav> {
  int currentIndex = 0;

  final List<Widget> screens =  [
    HomePage(),
    Wishlist(),
    Cart(),
    Search(),
    Settings()
  ];

  // final List<Widget> screens = [
  //   Container(color: Colors.red),
  //   Container(color: Colors.blue),
  //   Container(color: Colors.green),
  //   Container(color: Colors.yellow),
  //   Container(color: Colors.black),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),

      /// 🔥 Center Figma Style Button
      floatingActionButton: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          color: Colors.grey.shade200, // 👈 light grey
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 10,
            ),
          ],
        ),
        child: IconButton(
          icon: const Icon(Icons.shopping_cart_outlined, size: 28),
          onPressed: () {
            setState(() {
              currentIndex = 2;
            });
          },
        ),
      ),

      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,

      /// 🔻 Bottom Bar (Figma style)
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.black12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            navItem(Icons.home_outlined, "Home", 0),
            navItem(Icons.favorite_border, "Wishlist", 1),

            const SizedBox(width: 60), // 👈 space for center

            navItem(Icons.search, "Search", 3),
            navItem(Icons.settings_outlined, "Setting", 4),
          ],
        ),
      ),
    );
  }

  /// 🔹 Reusable Nav Item
  Widget navItem(IconData icon, String label, int index) {
    final isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
          print(currentIndex);
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.red : Colors.black,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}