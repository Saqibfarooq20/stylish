import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test"),
      backgroundColor: Colors.red,),
      body:  Image(image: AssetImage('assets/logo.png'))
    );
  }
}
