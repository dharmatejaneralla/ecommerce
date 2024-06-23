import 'package:ecommerce/features/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  void updatepageindex(index) {
    currentPageIndex.value = index;
  }

  void nextPage() {
    if (currentPageIndex.value < 2) {
      currentPageIndex.value = currentPageIndex.value + 1;
      pageController.animateToPage(currentPageIndex.value,
          duration: Durations.long1, curve: Curves.easeIn);
    } else {
      Get.off(const LoginScreen());
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(currentPageIndex.value,
        duration: Durations.long1, curve: Curves.easeIn);
  }
}
