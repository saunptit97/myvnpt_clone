import 'package:flutter/material.dart';

class ItemAccountWidget extends StatelessWidget {
  const ItemAccountWidget({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final int value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(height: 8),
          Text.rich(
            TextSpan(
              text: "$value",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              children: const [
                TextSpan(
                  text: "đ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
