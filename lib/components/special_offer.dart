import 'dart:async';

import 'package:flutter/material.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: 343,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade200, blurRadius: 5),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/special_offer.png',fit: BoxFit.cover,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Special Offers", style: TextStyle(fontSize: 16, fontWeight: FontWeight(400), color: Colors.black),),
              Text('We make sure you get the \n offer you need at best prices',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight(200), color: Colors.black),)
            ],
          )
        ],
      ),
    );
  }
}
