import 'package:flutter/material.dart';
import '../model/slider_model.dart';

class BannerSlider extends StatefulWidget {

  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {

  int currentIndex = 0;

  final List<SliderModel> sliders = [
    SliderModel(image: "assets/images/banner.png"),
    SliderModel(image: "assets/images/banner.png"),
    SliderModel(image: "assets/images/banner.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// 🔥 SLIDER
        SizedBox(
          height: 180,
          child: PageView.builder(
            itemCount: sliders.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              final slider = sliders[index];

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        slider.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),

                    /// 🔥 TEXT
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "50-40% OFF",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Now in product\nAll colours",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),

                    /// 🔥 BUTTON
                    Positioned(
                      left: 20,
                      bottom: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Shop Now →",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 10),

        /// 🔥 DOTS
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            sliders.length,
                (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentIndex == index ? 12 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? Colors.pink
                    : Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}