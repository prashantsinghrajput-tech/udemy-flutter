import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  // Update Current Index when page scroll
  void updatePageIndicator(index) => currentPageIndex = index;

  //Jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //Update Current Index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginPage);
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Update Current Index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
