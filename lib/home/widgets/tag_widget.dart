import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key, required this.tag});
  final String tag;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xffEDECEE),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(tag),
    );
  }
}
