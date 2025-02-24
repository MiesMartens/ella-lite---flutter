import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/onboarding_controller.dart';
import '../core/app_theme.dart';
import '../widget/button.dart';
import '../widget/diet_card.dart';
import 'package:interactive_slider/interactive_slider.dart';

class PageFourOnboarding extends StatefulWidget {
  PageFourOnboarding({
    super.key,
  });

  @override
  State<PageFourOnboarding> createState() => _PageFourOnboardingState();
}

class _PageFourOnboardingState extends State<PageFourOnboarding> {
  OnboardingController onboardingController = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: Text(
            "Whats your daily macro goals?",
            style: AppTheme.heading.copyWith(fontSize: 34),
            textAlign: TextAlign.center,
          ),
        ),

        // Text(
        //   "Any allergies? any thing you don't consume? helps us to give you right recommendations",
        //   style: AppTheme.smallText,
        // ),
        AppTheme.height(24),
        Column(
          children: [
            Text(
              "Calorie consumption / day",
              style: AppTheme.smallText.copyWith(height: 1),
            ),
            RichText(
                text: TextSpan(
              children: [TextSpan(text: "cal", style: AppTheme.subheading3)],
              text: (onboardingController.calorieCounter.value.toPrecision(2) *
                      10 *
                      300)
                  .toInt()
                  .toString(),
              style: AppTheme.heading.copyWith(
                  fontSize: 65,
                  color: (onboardingController.calorieCounter.value * 10 * 300)
                              .toInt() >
                          2500
                      ? Colors.red[400]
                      : AppTheme.darkerText),
            )),
            AppTheme.height(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Drag on to slider to interact.*",
                  style: AppTheme.smallText.copyWith(fontSize: 10),
                ),
              ),
            ),
            AppTheme.height(4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: InteractiveSlider(
                controller: onboardingController.calorieCounter,
                backgroundColor: AppTheme.deactivatedText,
                padding: EdgeInsets.all(0),
                foregroundColor: AppTheme.appColor,
                unfocusedOpacity: 1,
                focusedHeight: 24,
                unfocusedHeight: 20,
                onChanged: (value) {
                  if (value >= 0.48) {
                    onboardingController.calorieCounter.value = value;
                    onboardingController.proteinCounter.value = value;
                    onboardingController.fatCounter.value = value;
                    onboardingController.carbsCounter.value = value;
                    setState(() {});
                  } else {
                    onboardingController.calorieCounter.value = 0.48;
                    setState(() {});
                  }

                  // This callback runs repeatedly for every update
                },
                onProgressUpdated: (value) {
                  // This callback runs once when the user finishes updating the slider
                },
              ),
            ),
          ],
        ),

        AppTheme.height(24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Protein",
                      style: AppTheme.subheading3,
                    ),
                    InteractiveSlider(
                      controller: onboardingController.proteinCounter,
                      backgroundColor: AppTheme.deactivatedText,
                      padding: EdgeInsets.all(0),
                      foregroundColor: HexColorNew('#ff835f'),
                      unfocusedOpacity: 0.85,
                      onChanged: (value) {
                        if (value >= 0.48) {
                          onboardingController.proteinCounter.value = value;
                          setState(() {});
                        } else {
                          onboardingController.proteinCounter.value = 0.48;
                          setState(() {});
                        }

                        // This callback runs repeatedly for every update
                      },
                      onProgressUpdated: (value) {
                        // This callback runs once when the user finishes updating the slider
                      },
                    ),
                    Text(
                        (((onboardingController.proteinCounter.value *
                                            10 *
                                            300) *
                                        0.25) /
                                    4)
                                .toInt()
                                .toString() +
                            "g",
                        style: AppTheme.smallText)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Fat",
                      style: AppTheme.subheading3,
                    ),
                    InteractiveSlider(
                      controller: onboardingController.fatCounter,
                      backgroundColor: AppTheme.deactivatedText,
                      padding: EdgeInsets.all(0),
                      foregroundColor: HexColorNew("#f7c041"),
                      unfocusedOpacity: 0.85,
                      onChanged: (value) {
                        if (value >= 0.48) {
                          onboardingController.fatCounter.value = value;
                          setState(() {});
                        } else {
                          onboardingController.fatCounter.value = 0.48;
                          setState(() {});
                        }

                        // This callback runs repeatedly for every update
                      },
                      onProgressUpdated: (value) {
                        // This callback runs once when the user finishes updating the slider
                      },
                    ),
                    Text(
                        (((onboardingController.fatCounter.value * 10 * 300) *
                                        0.30) /
                                    9)
                                .toInt()
                                .toString() +
                            "g",
                        style: AppTheme.smallText)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Carbs",
                      style: AppTheme.subheading3,
                    ),
                    InteractiveSlider(
                      controller: onboardingController.carbsCounter,
                      backgroundColor: AppTheme.deactivatedText,
                      padding: EdgeInsets.all(0),
                      foregroundColor: HexColorNew('#4ab178'),
                      unfocusedOpacity: 0.85,
                      onChanged: (value) {
                        if (value >= 0.48) {
                          onboardingController.carbsCounter.value = value;
                          setState(() {});
                        } else {
                          onboardingController.carbsCounter.value = 0.48;
                          setState(() {});
                        }

                        // This callback runs repeatedly for every update
                      },
                      onProgressUpdated: (value) {
                        // This callback runs once when the user finishes updating the slider
                      },
                    ),
                    Text(
                        (((onboardingController.carbsCounter.value * 10 * 300) *
                                        0.48) /
                                    4)
                                .toInt()
                                .toString() +
                            "g",
                        style: AppTheme.smallText)
                  ],
                ),
              )
            ],
          ),
        ),
        // Row(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Text(
        //       "Extra: ",
        //       style: AppTheme.subheading2.copyWith(color: AppTheme.darkText),
        //     ),
        //     SizedBox(
        //         width: 180,
        //         child: TextField(
        //           decoration: InputDecoration(
        //     errorStyle: AppTheme.smallText
        //         .copyWith(fontSize: 10, color: AppTheme.appColor),
        //     contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        //     counterStyle: AppTheme.smallText,
        //     labelStyle: AppTheme.smallText,
        //     // border: OutlineInputBorder(
        //     //   borderRadius: BorderRadius.circular(50),
        //     //   borderSide: BorderSide(
        //     //     color: AppTheme.deactivatedText, // Border color
        //     //     width: 2.0, // Border width
        //     //   ),
        //     // )
        //     ),
        //           controller: TextEditingController(),
        //           style: AppTheme.subheading2,
        //         ))
        //   ],
        // ),
        AppTheme.height(40),

        CustomButton(
          onTap: () {
            onboardingController.nextPage();
          },
          child: Row(
            children: [
              Text(
                "              Next",
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
