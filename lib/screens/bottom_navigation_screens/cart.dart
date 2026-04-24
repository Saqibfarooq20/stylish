import 'package:flutter/material.dart';

import '../../components/common_header.dart';
import '../../components/custom_button.dart';
import '../../model/data.dart';
import '../../components/product_card.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  // 🔥 Total calculation (String price handle)
  double getTotalPrice() {
    double total = 0;

    for (var item in products) {
      String cleanPrice =
      item.price.replaceAll(RegExp(r'[^0-9.]'), '');
      total += double.tryParse(cleanPrice) ?? 0;
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    final total = getTotalPrice();

    return Scaffold(
      backgroundColor: Colors.grey[100],

      // 🔻 Bottom Section
      bottomNavigationBar: products.isEmpty
          ? null
          : Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 5),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Total row
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                const Text("Total"),
                Text(
                  "₹${total.toStringAsFixed(0)}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // Checkout button
            CustomButton(
              text: "Checkout",
              onTap: () {},
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Header
            const CommonHeader(heading: "Cart"),

            // 🔹 List
            Expanded(
              child: products.isEmpty
                  ? _emptyCart()
                  : ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    const EdgeInsets.only(bottom: 10),
                    child: Stack(
                      children: [
                        // Product Card
                        ProductCard(
                          product: products[index],
                          isHorizontal: true,
                        ),

                        // ❌ Remove button
                        Positioned(
                          right: 10,
                          top: 10,
                          child: GestureDetector(
                            onTap: () {
                              // 👉 remove logic later
                            },
                            child: const Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔻 Empty UI
  Widget _emptyCart() {
    return const Center(
      child: Text(
        "Your Cart is Empty",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}