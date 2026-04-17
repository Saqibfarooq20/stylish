import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stylish/screens/bottom_navigation_screens/home_page.dart';
import '../../components/custom_button.dart';
import '../bottom_navigation_screens/bas_bottom_nav.dart';

class GetStarteSrn extends StatelessWidget {
  const GetStarteSrn({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final height = media.size.height;
    final width = media.size.width;

    // Status bar transparent
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          /// 🔹 Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/get_st.png',
              fit: BoxFit.cover,
            ),
          ),

          /// 🔹 Bottom Gradient/Image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Rectangle 1.png',
              fit: BoxFit.cover,
            ),
          ),

          /// 🔹 Content (Text + Button)
          Positioned(
            bottom: height * 0.04,
            left: width * 0.08,
            right: width * 0.08,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Title
                Text(
                  "You want \nAuthentic, here \nyou go!",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: height * 0.015),

                /// Subtitle
                const Text(
                  'Find it here, buy it now!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: height * 0.04),

                /// Button
                CustomButton(
                  text: 'Get Started',
                  onTap: () {
                    print('Get started');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BasBottomNav()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}