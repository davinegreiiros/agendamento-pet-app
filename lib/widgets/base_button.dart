import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BaseButton extends StatelessWidget {
  BaseButton(
    {Key? key,
    required this.text,
    this.onPressed,
    this.buttonStyle,
    this.isDisable,
    this.height,
    this.width,
    this.margin,
    this.alignment, TextStyle? buttonTextStyle
    }) 

final String text;
final VoidCallBack? onPressed;
final ButtonStyle? buttonStyle;
final TextStyle? buttonTextStyle;
final bool? isDisable;
final double? height;
final double? width;
final EdgeInsets? margin;
final Alignment? alignment;

@override
Widget build(BuildContext context){
  return const SizeBox.shrink();
}

}