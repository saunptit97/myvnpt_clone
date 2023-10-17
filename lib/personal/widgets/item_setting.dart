import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

class ItemSettingWidget extends StatelessWidget {
  const ItemSettingWidget({
    Key? key,
    required this.title,
    required this.icon,
    this.isShowArrow = true,
    this.rightWidget,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final bool isShowArrow;
  final Widget? rightWidget;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 10,
        ),
        Text(title),
        const Spacer(),
        Visibility(
          visible: isShowArrow,
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: ColorUtil.greyColor,
          ),
        ),
        rightWidget ?? const SizedBox(),
      ],
    );
  }
}
