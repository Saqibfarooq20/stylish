import 'package:flutter/material.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          const Text(
            "All Featured",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          Row(
            children: [
              GestureDetector(
                onTap: () {
                  print('filter');
                },
                child: Image.asset(
                  'assets/images/filter.png',
                  height: 50,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  print('sort');
                },
                child: Image.asset(
                  'assets/images/sort.png',
                  height: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}