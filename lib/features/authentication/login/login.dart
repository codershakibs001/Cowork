
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/my_custom_button.dart';
import '../../../common/my_custom_text.dart';
import '../../../controller/getx/ui/authentication/login/login.dart';
import '../register/register.dart';
import 'widgets/my_custom_email_field.dart';
import 'widgets/my_custom_pass_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/auth/loginImage.png",
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                CustomText(
                  tName: "Welcome,\nPlease Login First",
                  fWeight: FontWeight.bold,
                  fSize: 28,
                  lSpacing: 4,
                ),
                Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        tName: "Email",
                        fWeight: FontWeight.w700,
                      ),
                      MyCustomEmailField(
                        controller: controller.emailController,
                        hText: "Enter Email",
                        onChanged: (value) => controller.validateEmail(value),
                      ),
                      CustomText(
                        tName: "Password",
                        fWeight: FontWeight.w700,
                      ),
                      MyCustomPassField(
                        controller: controller.passwordController,
                        hintText: "Enter Your Password",
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/iconImage/gmail.png"),
                        Image.asset("assets/images/iconImage/facebook.png"),
                        Image.asset("assets/images/iconImage/twitter.png"),
                      ],
                    ),
                    CustomText(
                      tName: "Forgot Password?",
                      fWeight: FontWeight.w500,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              MyCustomButton(
                buttonName: 'Login',
                margin: EdgeInsets.symmetric(horizontal: 10),
                onTap: () {
                  if (controller.formKey.currentState!.validate()) {
                    Get.to(
                        RegisterPage()); // Navigate only if the form is valid
                  }
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(tName: "Don’t Have An Account yet?"),
              GestureDetector(
                onTap: () {
                  Get.to(RegisterPage()); // Navigate to the RegisterPage on tap
                },
                child: CustomText(
                  tName: " Register",
                  fWeight: FontWeight.w700,
                  fSize: 16,
                  color: Color(0xff155157),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
