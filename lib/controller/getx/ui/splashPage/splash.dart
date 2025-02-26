import 'package:cowork_1/features/pages/onboardingPage/onboarding_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void navigateToNextPage() {
    Future.delayed(Duration(seconds: 2), () {
      Get.off(() => OnboardingPage());
    });
  }

  @override
  void onInit() {
    super.onInit();
    navigateToNextPage();
  }
}
