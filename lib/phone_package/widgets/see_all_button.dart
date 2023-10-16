import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffEAF2FF),
          borderRadius: BorderRadius.circular(100),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: const Text(
          "Xem tất cả",
          style: TextStyle(
            color: ColorUtil.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
