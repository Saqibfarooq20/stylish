import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCircleButton extends StatelessWidget {
  final String svgPath;   // svg image path
  final VoidCallback onTap;
  final double size;

  const SocialCircleButton({
    super.key,
    required this.svgPath,
    required this.onTap,
    this.size = 60,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(size),

      child: Container(
        height: size,
        width: size,

        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Color(0xFFFF3B5C)),
        ),

        child: Center(
          child: Image.asset(
            svgPath,
            height: 24,
          )
        ),
      ),
    );
  }
}