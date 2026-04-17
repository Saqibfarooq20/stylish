import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/screens/authentication/Sign_in.dart';

class OnbordingThree extends StatelessWidget {
  const OnbordingThree({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/images/three.svg',
                fit: BoxFit.cover,),
              SvgPicture.asset('assets/images/Skip.svg',
                fit: BoxFit.cover,),
            ],
          ),
          SizedBox(
            height: (height * 0.20),
          ),

          SizedBox(
            height: 300,
            width: double.infinity,
            child: SvgPicture.asset('assets/images/onboard_three.svg',
            fit: BoxFit.cover,),
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
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/images/Prev (1).svg'),
                SizedBox(
                  width: width * 0.20,
                ),
                SvgPicture.asset('assets/images/circle (2).svg'),
                GestureDetector(child
                    : SvgPicture.asset('assets/images/get_started.svg'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                },)
              ],
            ),
          )


        ],
        )
        ),
      ),
    );

  }
}
