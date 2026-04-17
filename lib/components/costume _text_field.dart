import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
 final String hintText;
 final IconData icon;
 final bool isPassword;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.isPassword = false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 12),

        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade400)
        ),

        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(icon, color: Colors.grey,),
            suffixIcon: isPassword ? const Icon(Icons.visibility_outlined, color: Colors.grey)
                : null,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}