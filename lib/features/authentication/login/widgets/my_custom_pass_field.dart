import 'package:cowork_1/controller/getx/ui/authentication/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCustomPassField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;

  MyCustomPassField({super.key, this.controller, this.hintText});

  final passController = Get.put(SignInController());

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
          controller: controller,
          obscureText: passController.obscureText.value,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: hintText ?? "********",
            suffixIcon: IconButton(
              onPressed: () {
                passController.toggleObscureText();
              },
              icon: Icon(passController.obscureText.value
                  ? Icons.visibility
                  : Icons.visibility_off),
            ),
            border: const OutlineInputBorder(borderSide: BorderSide.none),
          ),
          validator: (value) {
            if (value == null || value == '') {
              return "password required";
            } else if (value.toString().length < 6 && hintText == "signUp") {
              return "password_length_error";
            }
            return null;
          },
        );
      }),
    );
  }
}
