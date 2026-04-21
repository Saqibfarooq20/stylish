import 'package:flutter/material.dart';
import '../model/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final bool isHorizontal;

  const ProductCard({
    super.key,
    required this.product,
    this.isHorizontal = false, // default vertical
  });

  @override
  Widget build(BuildContext context) {
    return isHorizontal ? _horizontalCard() : _verticalCard();// main logic here
  }

  /// 🔹 Vertical Card (Current Design)
  Widget _verticalCard() {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _image(80),
          const SizedBox(height: 6),
          _title(),
          const SizedBox(height: 4),
          _priceRow(),
        ],
      ),
    );
  }

  /// 🔹 Horizontal Card (NEW)
  Widget _horizontalCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      padding: const EdgeInsets.all(8),
      decoration: _boxDecoration(),
      child: Row(
        children: [
          _image(80),

          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _title(),
                const SizedBox(height: 6),
                _priceRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 🔹 Common Widgets (Reusable)
  Widget _image(double height) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        product.image,
        height: height,
        width: isHorizontal ? 80 : double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _title() {
    return Text(
      product.name,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 12),
    );
  }

  Widget _priceRow() {
    return Row(
      children: [
        Text(
          product.price,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          product.oldPrice,
          style: const TextStyle(
            fontSize: 10,
            color: Colors.grey,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(color: Colors.grey.shade200, blurRadius: 5),
      ],
    );
  }
}