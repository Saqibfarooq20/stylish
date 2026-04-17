
import 'package:flutter/material.dart';

/// 🔹 HEADER (Top Bar)
class CustomHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomHeader({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          /// 👉 Menu button (drawer open karega)
          IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),

          /// 👉 Logo
          Image.asset(
            'assets/logo.png',
            height: 30,
          ),

          /// 👉 Profile image
          const CircleAvatar(
            radius: 18,
            backgroundImage:
            AssetImage('assets/images/profile.png'),
          ),
        ],
      ),
    );
  }
}