import 'package:flutter/material.dart';

class CustomImages extends StatelessWidget {
  final String imagePath;
  const CustomImages({
    super.key, required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: 30,
      width: 30,
      fit: BoxFit.fitHeight,
    );
  }
}