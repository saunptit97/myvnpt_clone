import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

class ItemServiceAdd extends StatelessWidget {
  const ItemServiceAdd({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: ColorUtil.greyF9),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorUtil.primaryColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 40,
            width: 40,
            child: const Icon(
              Icons.add,
              color: ColorUtil.primaryColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title ?? "Đăng ký\ndịch vụ mới",
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
