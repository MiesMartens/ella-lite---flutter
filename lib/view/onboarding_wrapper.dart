import 'package:animate_do/animate_do.dart';
import 'package:ella_lite/view/onboarding_page_one.dart';
import 'package:ella_lite/view/onboarding_page_four.dart';
import 'package:ella_lite/view/onboarding_page_six.dart';
import 'package:ella_lite/view/onboarding_page_three.dart';
import 'package:ella_lite/view/onboarding_page_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';
import '../core/app_theme.dart';
import 'onboarding_page_five.dart';

class OnboardingWrapper extends StatefulWidget {
  const OnboardingWrapper({
    super.key,
  });

  @override
  State<OnboardingWrapper> createState() => _OnboardingWrapperState();
}

class _OnboardingWrapperState extends State<OnboardingWrapper> {
  OnboardingController onboardingController = Get.find<OnboardingController>();
  List<Widget> pages = [
    PageOneOnboarding(),
    PageTwoOnboarding(),
    PageThreeOnboarding(),
    PageFourOnboarding(),
    PageFiveOnboarding(),
    PageSixOnboarding(),
  ];
  @override
  void initState() {
    onboardingController.pageController = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: onboardingController.pageController,
            onPageChanged: (value) {
              onboardingController.currentIndex.value = value;
            },
            children: pages),
        Obx(() {
          return onboardingController.currentIndex.value == 0 ||
                  onboardingController.currentIndex.value == pages.length - 1
              ? SizedBox()
              : Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 34),
                    child: SizedBox(
                      height: 12,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: pages.length,
                        itemBuilder: (context, index) {
                          return stepIndicator(index);
                        },
                      ),
                    ),
                  ),
                );
        })
      ],
    );
  }

  Widget stepIndicator(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Obx(() {
        return Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
              color: onboardingController.currentIndex.value == index
                  ? AppTheme.appColor
                  : onboardingController.currentIndex.value > index
                      ? AppTheme.deactivatedText
                      : Colors.white,
              border: Border.all(
                  width: 2,
                  color: onboardingController.currentIndex.value >= index
                      ? Colors.transparent
                      : AppTheme.deactivatedText),
              borderRadius: BorderRadius.circular(24)),
          // child: Center(
          //     child: Text(
          //   (index + 1).toString(),
          //   style: AppTheme.smallText.copyWith(
          //       color: onboardingController.currentIndex.value == index
          //           ? Colors.white
          //           : AppTheme.buttonIconColor,
          //       fontWeight: FontWeight.bold),
          // )),
        );
      }),
    );
  }
}
