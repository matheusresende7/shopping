import 'package:flutter/material.dart';
import 'package:shopping/src/core/constants/fonts.dart';
import 'package:shopping/src/core/styles/text_sizes.dart';

class TextDefault extends StatelessWidget {

  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextDecoration decoration;

  TextDefault ({
    this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      this.text,
      style: TextStyle(
        color: this.color ?? Theme.of(context).primaryColor,
        fontSize: this.fontSize ?? TextSizes.xxLarge,
        fontWeight: this.fontWeight ?? FontWeight.w500,
        fontFamily: Fonts.robotoSlab,
        letterSpacing: 1,
        decoration: this.decoration ?? TextDecoration.none,
      ),
    );

  }
}
