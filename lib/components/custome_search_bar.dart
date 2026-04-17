import 'package:flutter/material.dart';

class CustomeSearchBar extends StatelessWidget {
  const CustomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey,),

          SizedBox(width: 10,),

          const Expanded(child: TextField(
            decoration: InputDecoration(
              hintText: "Search any Product...",
              border: InputBorder.none
            ),
          )),
          /// 🎤 Mic Icon (optional)
          const Icon(Icons.mic, color: Colors.grey),

        ],
      ),
    );
  }
}
