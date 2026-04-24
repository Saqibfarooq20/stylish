import 'package:flutter/material.dart';

class CommonHeader extends StatelessWidget {
  final IconData leftIcon;
  final String heading;
  final IconData? rightIcon ;
  const CommonHeader({
    super.key,
    required this.heading,
    this.rightIcon,
    this.leftIcon = Icons.arrow_back_ios
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
        children: [
          Icon(leftIcon),
          Text(
            heading,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          rightIcon != null ? Icon(rightIcon) : const SizedBox(width: 24,)

        ],
      ),
    );
  }
}
