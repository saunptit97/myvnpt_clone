import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

class ItemTypeAdd extends StatelessWidget {
  const ItemTypeAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: ColorUtil.primaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
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
          const Text(
            "Thêm liên kết",
            style: TextStyle(color: ColorUtil.primaryColor),
          )
        ],
      ),
    );
  }
}
