import 'package:flutter/material.dart';
import 'package:stylish/screens/spash_screens/onbording_one.dart';
import 'package:stylish/screens/spash_screens/spash_screen_one.dart';

import '../screens/bottom_navigation_screens/bas_bottom_nav.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BasBottomNav(),
    );
  }
}
