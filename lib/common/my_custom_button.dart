import 'package:flutter/material.dart';
import 'my_custom_text.dart';

class MyCustomButton extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final String buttonName;
  final void Function()? onTap;

  const MyCustomButton({
    super.key,
    this.margin,
    required this.buttonName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        margin: margin,
        decoration: BoxDecoration(
          color: Color(0xffC264FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: CustomText(
            tName: buttonName,
            fSize: 16,
            fWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

}
