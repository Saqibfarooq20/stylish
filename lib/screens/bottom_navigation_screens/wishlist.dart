import 'package:flutter/material.dart';

import '../../components/address.dart';
import '../../components/common_header.dart';
import '../../components/product_card.dart';
import '../../components/custom_button.dart';
import '../../model/data.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  // 👉 Total calculate karna (String → number)
  double getTotalPrice() {
    double total = 0;

    for (var item in products) {
      double price = double.tryParse(item.price) ?? 0;
      total += price;
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    double total = getTotalPrice();

    return Scaffold(
      backgroundColor: Colors.grey[100],

      // 👉 Bottom button + total
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Total
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Total"),
                Text("₹$total"),
              ],
            ),

            const SizedBox(height: 10),

            // Button
            CustomButton(
              text: "Move to Cart",
              onTap: () {},
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            // Header
            const CommonHeader(heading: "Wishlist"),
        
            // Address
            const Address(address: "Humdard Nagar B"),
        
            // Product List
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: products[index],
                    isHorizontal: true,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}