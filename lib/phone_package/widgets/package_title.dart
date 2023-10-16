import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

class PackageTitleWidget extends StatelessWidget {
  const PackageTitleWidget({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(color: ColorUtil.greyColor),
        )
      ],
    );
  }
}
