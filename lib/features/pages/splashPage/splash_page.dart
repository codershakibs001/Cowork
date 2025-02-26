import 'package:cowork_1/common/my_custom_text.dart';
import 'package:cowork_1/controller/getx/ui/splashPage/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widget/custom_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImages(
                        imagePath: 'assets/images/vector/Combined Shape.png'),
                    SizedBox(width: 7),
                    CustomImages(
                        imagePath: "assets/images/vector/Combined Shape.png"),
                  ],
                ),
                CustomText(
                    tName: 'COWORK',
                    lSpacing: 6,
                    fWeight: FontWeight.bold,
                    fSize: 30),
              ],
            ),
            CustomText(
                tName: "Why do you want to motivate yourself?",
                color: Colors.grey[400])
          ],
        ),
      ),
    );
  }
}
