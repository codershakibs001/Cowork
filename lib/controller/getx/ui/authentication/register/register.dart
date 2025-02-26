import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var name = ''.obs;
  var isValid = true.obs;

  void setName(String value) {
    name.value = value;
    isValid.value = _isValidName(value);
  }

  bool _isValidName(String value) {
    return value.isNotEmpty && RegExp(r"^[a-zA-Z\s]+$").hasMatch(value);
  }

  @override
  void onInit() {
    nameController.text = "shakib";
    emailController.text = "shakibmohammad18@gmail.com";
    passwordController.text = "123456";
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
