import 'package:flutter/material.dart';
import 'base_button.dart';

class CustomElevatedButton extends BaseButton {
  CustomElevatedButton(
  {Key? key,
  this.decoration,
  this.leftIcon,
  this.rightIcon,
  EdgeInsets? margin,
  VoidCallback? onPressed,
  ButtonStyle? buttonStyle,
  Alignment? alignment,
  TextStyle? buttonTextStyle,
  bool? isDisable,
  double? height,
  double? width,
  required String text}) : super(
    text: text,
    onPressed: onPressed,
    buttonStyle: buttonStyle,
    isDisable: isDisable,
    buttonTextStyle: buttonTextStyle,
    height: height,
    width: width,
    alignment: alignment,
    margin: margin,
  );


final BoxDecoration? decoration;
final Widget? leftIcon;
final Widget? rightIcon;

@override
Widget build(BuildContext context) {
    return alignment != null ? Align(
      alignment: alignment ?? Alignment.center,
      child: buildElevatedButtonWidget) : buildElevatedButtonWidget;
  }

Widget get buildElevatedButtonWidget => Container(
  height: this.height ?? 65.V,
  width: this.width ?? double.maxFinite,
  margin: margin,
  decoration: decoration,
  child: ElevatedButton(
    style: buttonStyle,
    onPressed: isDisable ?? false ? null : onPressed ?? () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        leftIcon ?? const SizedBox.shrink(),
        Text(
          text,
          style: buttonTextStyle ?? CustomTextStyles.headlineSmallBold,
        ),
        rightIcon ? const SizedBox.shrink();
      ],
    ),
  ),
);
}