import 'package:animate_do/animate_do.dart';
import 'package:ella_lite/view/onboarding_page_one.dart';
import 'package:ella_lite/view/onboarding_page_three.dart';
import 'package:ella_lite/view/onboarding_page_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';
import '../core/app_theme.dart';

class OnboardingWrapper extends StatefulWidget {
  const OnboardingWrapper({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  State<OnboardingWrapper> createState() => _OnboardingWrapperState();
}

class _OnboardingWrapperState extends State<OnboardingWrapper> {
  @override
  void initState() {
    onboardingController.pageController = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  List<Widget> pages = [
    PageOneOnboarding(),
    PageTwoOnboarding(),
    PageThreeOnboarding(),
  ];

  OnboardingController onboardingController =
      Get.put(OnboardingController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
                height: 28,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return stepIndicator(index);
                  },
                ),
              ),
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: onboardingController.pageController,
            
            onPageChanged: (value) {
              onboardingController.currentIndex.value = value;
            },
            children: pages
          ),
        ),
      ],
    );
  }

  Widget stepIndicator(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Obx(() {
        return Container(
          height: 28,
          width: 28,
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
          child: Center(
              child: Text(
            (index + 1).toString(),
            style: AppTheme.smallText.copyWith(
                color: onboardingController.currentIndex.value == index
                    ? Colors.white
                    : AppTheme.buttonIconColor,
                fontWeight: FontWeight.bold),
          )),
        );
      }),
    );
  }
}
