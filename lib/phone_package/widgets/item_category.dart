import 'package:flutter/material.dart';

class ItemCategoryWidget extends StatelessWidget {
  const ItemCategoryWidget({
    super.key,
    required this.name,
    required this.icon,
    this.onTap,
    this.size,
  });
  final String name;
  final String icon;
  final VoidCallback? onTap;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 5,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(size ?? 30),
              child: Image.asset(
                icon,
                width: size ?? 60,
                height: size ?? 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
