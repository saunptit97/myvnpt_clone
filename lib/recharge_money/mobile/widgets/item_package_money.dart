import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

class ItemPackageMoneyWidget extends StatelessWidget {
  const ItemPackageMoneyWidget({
    super.key,
    required this.value,
    this.onTap,
    this.isActive = false,
  });
  final String value;
  final VoidCallback? onTap;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? ColorUtil.primaryColor : ColorUtil.greyEC,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: isActive ? ColorUtil.primaryColor : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
