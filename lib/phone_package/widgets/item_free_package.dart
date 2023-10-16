import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

class ItemFreePackage extends StatelessWidget {
  const ItemFreePackage({
    super.key,
    required this.data,
    this.onTap,
  });
  final Map<String, dynamic> data;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              data['name'],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              data['price'],
              style: const TextStyle(color: ColorUtil.primaryColor),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(data['content'], maxLines: 3),
          ],
        ),
      ),
    );
  }
}
