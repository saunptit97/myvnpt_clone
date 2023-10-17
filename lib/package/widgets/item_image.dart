import 'package:flutter/material.dart';

class ItemImageWidget extends StatelessWidget {
  const ItemImageWidget({
    super.key,
    required this.image,
    this.onTap,
    required this.text,
  });
  final String image;
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 110,
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            left: 20,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
