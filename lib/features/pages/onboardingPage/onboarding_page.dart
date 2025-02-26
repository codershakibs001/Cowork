
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../common/my_custom_text.dart';
import '../../../controller/getx/ui/onboarding/onboarding.dart';
import '../../authentication/login/login.dart';
import 'widget/onboarding1.dart';
import 'widget/onboarding2.dart';
import 'widget/onboarding3.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment(
          0.90,
          0.90,
        ),
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.onLastPage.value = (index == 2);
            },
            children: const [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            child: CustomText(
              tName: "skip",
              fSize: 18,
              color: Colors.white,
              lSpacing: 2,
              onTap: () {
                controller.pageController.jumpToPage(2);
              },
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.2),
            child: SmoothPageIndicator(
              controller: controller.pageController,
              count: 3,
              effect: WormEffect(
                  dotHeight: 5,
                  dotWidth: 22,
                  radius: 5,
                  activeDotColor: Colors.black),
            ),
          ),
          Obx(
            () => controller.onLastPage.value
                ? GestureDetector(
                    onTap: () => Get.to(LoginPage()),
                    child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  )
                : Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300],
                    ),
                    child: Center(
                      child: CustomText(
                        tName: "Next",
                        fWeight: FontWeight.w600,
                        onTap: () {
                          controller.pageController.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
