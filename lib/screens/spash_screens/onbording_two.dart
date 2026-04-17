import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/screens/spash_screens/onbording_three.dart';

class OnbordingTwo extends StatelessWidget {
  const OnbordingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            /// 🔹 Top Image
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset(
                'assets/images/two.svg',
              ),
            ),

            SizedBox(height: height * 0.20),

            /// 🔹 Main Image
            SizedBox(
              height: 300,
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/images/onboard_two.svg',
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 15),

            /// 🔹 Title
            const Text(
              "Choose Products", // 👉 change later
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

            /// 🔹 Bottom Controls
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(child: SvgPicture.asset('assets/images/Prev (1).svg'), onTap: (){
                    Navigator.pop(context);
                  },),
                  SvgPicture.asset('assets/images/circle_two.svg'),
                  GestureDetector(child: SvgPicture.asset('assets/images/next.svg'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OnbordingThree()));
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