import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interactive_slider/interactive_slider.dart';

class OnboardingController extends GetxController {
  var currentIndex = 0.obs;
  // var voteCount = 0.obs;
  late PageController pageController;
  final calorieCounter = InteractiveSliderController(0.48);
  final proteinCounter = InteractiveSliderController(0.48);
  final fatCounter = InteractiveSliderController(0.48);
  final carbsCounter = InteractiveSliderController(0.48);
  // RxList<Diet> dietList = <Diet>[].obs;
  // RxList<Dish> dishList = <Dish>[].obs;

  // @override
  // void onInit() async {

  //   dietList.value = await ApiEndpoints.getDiets();

  //   super.onInit();
  // }

  void nextPage() {
    // if (currentIndex.value == (2)) {
    // Get.find<AuthMethods>().refreshUser();
    // }else{

    currentIndex++;
    pageController.nextPage(
        duration: Durations.medium3, curve: Curves.easeInOut);
  }
  // }

  void previousPage() {
    currentIndex--;
    pageController.previousPage(
        duration: Durations.medium3, curve: Curves.easeInOut);
  }
}
