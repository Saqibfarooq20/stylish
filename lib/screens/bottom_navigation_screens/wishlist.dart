import 'package:flutter/material.dart';

import '../../components/address.dart';
import '../../components/product_card.dart';
import '../../model/data.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.yellowAccent,
              child: Address(address: 'humdard nagar b'),
            ),

            // ✅ Expanded yahan use hoga
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index],  isHorizontal: true,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}