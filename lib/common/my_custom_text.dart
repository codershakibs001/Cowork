import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String tName;
  final double? fSize;
  final FontWeight? fWeight;
  final Color? color;
  final double? lSpacing;
  final int? mLines;
  final TextAlign? tAlign;
  final void Function()? onTap;

  const CustomText({
    super.key,
    required this.tName,
    this.fSize,
    this.fWeight,
    this.color,
    this.lSpacing,
    this.mLines,
    this.tAlign, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Text(
        maxLines: mLines,
        textAlign: tAlign,
        tName,
        style: TextStyle(
          fontSize: fSize,
          fontWeight: fWeight,
          color: color,
          letterSpacing: lSpacing,
        ),
      ),
    );
  }
}
