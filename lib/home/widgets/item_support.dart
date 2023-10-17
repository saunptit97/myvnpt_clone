import 'package:flutter/material.dart';

class ItemSupportWidget extends StatelessWidget {
  const ItemSupportWidget({super.key, required this.text, required this.image});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xffF7F9FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
