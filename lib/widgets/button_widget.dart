import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/color_util.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.title,
    this.onTap,
    this.height = 52,
    this.btnColor = ColorUtil.primaryColor,
    // this.isGradient: false,
    this.fontWeight = FontWeight.normal,
    this.txtColor = Colors.white,
    this.borderRadius = 100,
    this.paddingHor = 0,
    this.widthBorder = 1,
    this.width,
    this.borderColor,
    this.iconLeft,
    this.iconRight,
    this.iconLeftColor,
    this.iconRightColor,
    this.content,
    this.fontFamily,
    this.isShowShadow: false,
    this.titleStyle,
  }) : super(key: key);

  /// Button name
  final String? title;

  /// Function handle onTap button
  final VoidCallback? onTap;

  /// Height of button
  /// Default 52
  final double height;

  /// Width of button
  final double? width;

  /// Color button
  final Color? btnColor;

  /// Check gradient color
  // final bool? isGradient;

  /// Name color of button
  final Color txtColor;

  /// Font weight of text
  final FontWeight fontWeight;

  /// Font weight of text
  final String? fontFamily;

  /// Border color of button
  final Color? borderColor;

  /// Icon left of button
  final String? iconLeft;

  /// Icon right of button
  final Widget? iconRight;

  /// Border radius button
  /// Default 100
  final double borderRadius;

  /// Padding content button
  final double paddingHor;

  /// Height of border
  final double widthBorder;

  /// icon left Color
  final Color? iconLeftColor;

  /// icon right color
  final Color? iconRightColor;

  /// customize content
  final Widget? content;

  final bool isShowShadow;

  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: btnColor,
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
                width: widthBorder,
                style: BorderStyle.solid,
              )
            : Border.all(
                width: 0,
                color: btnColor ?? Theme.of(context).colorScheme.background,
              ),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
        boxShadow: [
          if (isShowShadow)
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 15,
              offset: const Offset(0, 1),
            ),
        ],
      ),
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: paddingHor),
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Row(
            children: [
              Expanded(
                child: content != null
                    ? content!
                    : Center(
                        child: Text(
                          title!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: titleStyle ??
                              TextStyle(
                                color: txtColor,
                                fontSize: 16,
                                fontWeight: fontWeight,
                                fontFamily: fontFamily,
                              ),
                        ),
                      ),
              ),
              if (iconRight != null) iconRight!,
            ],
          ),
        ),
      ),
    );
  }
}
