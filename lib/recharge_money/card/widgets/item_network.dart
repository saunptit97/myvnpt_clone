import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

class ItemNetworkWidget extends StatelessWidget {
  const ItemNetworkWidget({
    super.key,
    required this.icon,
    this.isActive = false,
  });
  final String icon;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 80,
      width: size.width / 3 - 15,
      decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? ColorUtil.primaryColor : ColorUtil.greyColor,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Image.asset(icon),
      ),
    );
  }
}
