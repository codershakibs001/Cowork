import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/getx/ui/authentication/login/login.dart';

class MyCustomEmailField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hText;
  final void Function(String)? onChanged;

  MyCustomEmailField({
    super.key,
    this.controller,
    this.hText,
    this.onChanged,
  });

  final emailController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.06,
      width: screenWidth * 1,
      decoration: BoxDecoration(
        color: Color(0xffF6F8FF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Obx(() {
        return TextFormField(
          onChanged: (value) {
            emailController.validateEmail(value);
            if (onChanged != null) onChanged!(value);
          },
          controller: controller,
          decoration: InputDecoration(
            hintText: hText ?? 'Email',
            suffixIcon: emailController.isValidEmail.value
                ? Icon(
                    Icons.check,
                    color: Colors.green,
                  )
                : null,
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
          validator: (value) {
            if (value == null || value == '') {
              return "email required";
            } else if (!(value.contains("@") && value.contains("."))) {
              return "wrong_email_error";
            }
            return null;
          },
        );
      }),
    );
  }
}
