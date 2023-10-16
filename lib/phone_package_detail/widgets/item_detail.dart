import 'package:flutter/material.dart';

class ItemDetailWidget extends StatelessWidget {
  const ItemDetailWidget({super.key, required this.value, required this.title});
  final String value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Text(title)
        ],
      ),
    );
  }
}
