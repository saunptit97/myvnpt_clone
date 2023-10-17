import 'package:flutter/material.dart';

class ItemInfoWidget extends StatelessWidget {
  const ItemInfoWidget({
    super.key,
    required this.icon,
    required this.title,
  });
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: Image.asset(icon),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
