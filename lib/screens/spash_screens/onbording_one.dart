import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'onbording_two.dart';

class OnbordingOne extends StatelessWidget {
  const OnbordingOne({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            /// 🔹 Top Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/images/one.svg'),
                  SvgPicture.asset('assets/images/Skip.svg'),
                ],
              ),
            ),

            /// 🔹 Space (same visual feel)
            SizedBox(height: height * 0.2),

            /// 🔹 Main Image
            SizedBox(
              height: 300, // same as your design
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/images/onboard_one.svg',
                fit: BoxFit.cover, // 👈 better than cover for SVG
              ),
            ),

            const SizedBox(height: 15),

            /// 🔹 Title
            const Text(
              "Choose Products",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),

            const SizedBox(height: 5),

            /// 🔹 Description
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Amet minim mollit non deserunt ullamco \n"
                    "est sit aliqua dolor do amet sint.\n"
                    "Velit officia consequat duis enim velit mollit.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffA8A8A9),
                ),
              ),
            ),

            const Spacer(),

            /// 🔹 Bottom Row (same UI but fixed alignment)
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: width * 0.20,),
                  SvgPicture.asset('assets/images/circle.svg'),
                  GestureDetector(child: SvgPicture.asset('assets/images/next.svg'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OnbordingTwo()));
                  },),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}