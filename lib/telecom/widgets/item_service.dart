import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';

class ItemService extends StatelessWidget {
  const ItemService({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(color: ColorUtil.greyF9),
        borderRadius: BorderRadius.circular(10),
        color: ColorUtil.greyF9,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            IconUtils.icSim,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Di động",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "Có 1 thuê bao",
            style: TextStyle(color: ColorUtil.greyColor, fontSize: 12),
          )
        ],
      ),
    );
  }
}
