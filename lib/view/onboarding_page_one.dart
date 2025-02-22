import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/onboarding_controller.dart';
import '../core/app_theme.dart';
import '../widget/button.dart';

class PageOneOnboarding extends StatelessWidget {
   PageOneOnboarding({
    super.key,
  });

  OnboardingController onboardingController =
      Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Text(
                "Your personal\nDe-bloating App",
                style:
                    AppTheme.heading.copyWith(fontSize: 34),
                textAlign: TextAlign.center,
              ),
            ),
            Lottie.asset("text_underline.json", width: 180),
          ],
        ),
        AppTheme.height(8),
        Text(
          "Worry not! We are here to take care of your gut health.",
          style: AppTheme.smallText,
        ),
        AppTheme.height(40),
    
        CustomButton(
          onTap: () {
           onboardingController.nextPage();
          },
          child: Row(
            children: [
              Text(
                "              Get Started",
                style: AppTheme.subheading2.copyWith(
                  color: Colors.white,
                ),
              ),
              AppTheme.width(8),
              ShakeX(
                  infinite: true,
                  duration: Duration(seconds: 3),
                  from: 2,
                  animate: true,
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    weight: 10,
                  )),
              Text(
                "            ",
                style: AppTheme.subheading2.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        AppTheme.height(8),
        GestureDetector(
          onTap: () {},
          child: IntrinsicWidth(
            // This ensures the width is as long as its content
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: AppTheme.appColor, width: 2),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 24),
                  child: Text(
                    "I already have an Account",
                    style: AppTheme.subheading2.copyWith(
                      color: AppTheme.appColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal:  120.0),
        //   child: CustomTextField(validator: (value){},controller: TextEditingController(),hintText: "Email",),
        // ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal:  120.0),
        //   child: CustomTextField(validator: (value){},controller: TextEditingController(),hintText: "Email",),
        // )
      ],
    );
  }
}
