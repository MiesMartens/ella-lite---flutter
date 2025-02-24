import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/onboarding_controller.dart';
import '../core/app_theme.dart';
import '../widget/button.dart';

class PageFiveOnboarding extends StatefulWidget {
  PageFiveOnboarding({
    super.key,
  });

  @override
  State<PageFiveOnboarding> createState() => _PageFiveOnboardingState();
}

class _PageFiveOnboardingState extends State<PageFiveOnboarding>
    with TickerProviderStateMixin {
  OnboardingController onboardingController = Get.find<OnboardingController>();

  // late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    // animationController = AnimationController(
    //     vsync: this, duration: Duration(milliseconds: 1000));
    Future.delayed(Duration(milliseconds: 3800)).then((value) {
      //   animationController.forward().then((v) {
      onboardingController.nextPage();
      //   });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Stack(
        //   alignment: Alignment.bottomLeft,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(bottom: 14),
        //       child: Text(
        //         "Let's get your\npersonalized meal plan!",
        //         style: AppTheme.heading.copyWith(fontSize: 34),
        //         textAlign: TextAlign.center,
        //       ),
        //     ),
        //     Lottie.asset("text_underline.json", width: 180),
        //   ],
        // ),
        // AppTheme.height(8),

        FadeOut(
          delay: Duration(milliseconds: 3600),
          child: Opacity(
            opacity: 0.3,
            child: Lottie.asset(
              'assets/text_back.json',
              height: 220,
              repeat: true,
            ),
          ),
        ),
        Lottie.asset(
          'assets/celeb.json',
          repeat: false,
        ),
        Pulse(
          from: 1,
          to: 1.012,
          duration: Duration(seconds: 2),
          infinite: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FadeOut(
                delay: Duration(milliseconds: 3600),
                child: ZoomIn(
                  child: Text(
                    "You are all set!!",
                    style: AppTheme.heading.copyWith(fontSize: 34),
                  ),
                ),
              ),
              AppTheme.height(4),
              Stack(
                alignment: Alignment.center,
                children: [
                  FadeIn(
                    delay: Duration(milliseconds: 400),
                    child: FadeOut(
                        delay: Duration(milliseconds: 2000),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Curating your ",
                            style: AppTheme.subheading3
                                .copyWith(color: AppTheme.darkText),
                          ),
                          TextSpan(
                            text: "personalized",
                            style: AppTheme.subheading3.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppTheme.appColor),
                          ),
                          TextSpan(
                            text: " Meal Plan",
                            style: AppTheme.subheading3
                                .copyWith(color: AppTheme.darkText),
                          )
                        ]))),
                  ),
                  FadeIn(
                    delay: Duration(milliseconds: 2200),
                    child: FadeOut(
                        delay: Duration(milliseconds: 3600),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Adding ",
                            style: AppTheme.subheading3
                                .copyWith(color: AppTheme.darkText),
                          ),
                          TextSpan(
                            text: "30 Plants",
                            style: AppTheme.subheading3.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppTheme.appColor),
                          ),
                          TextSpan(
                            text: " into your diet",
                            style: AppTheme.subheading3
                                .copyWith(color: AppTheme.darkText),
                          )
                        ]))),
                  ),
                  // FadeIn(
                  //   delay: Duration(milliseconds: 4000),
                  //   child: FadeOut(
                  //     delay: Duration(milliseconds: 5400),
                  //     child: Text(
                  //       "Taking care of your choices",
                  //       style: AppTheme.smallText,
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
        // ZoomIn(
        //   delay: Duration(milliseconds: 5400),
        //   child: Lottie.asset('assets/tick.json',
        //       height: 130, controller: animationController, repeat: false),
        // ),

        // AppTheme.height(40),

        // CustomButton(
        //   onTap: () {
        //     onboardingController.nextPage();
        //   },
        //   child: Row(
        //     children: [
        //       Text(
        //         "              Get Started",
        //         style: AppTheme.subheading2.copyWith(
        //           color: Colors.white,
        //         ),
        //       ),
        //       AppTheme.width(8),
        //       ShakeX(
        //           infinite: true,
        //           duration: Duration(seconds: 3),
        //           from: 2,
        //           animate: true,
        //           child: Icon(
        //             Icons.arrow_forward_rounded,
        //             color: Colors.white,
        //             weight: 10,
        //           )),
        //       Text(
        //         "            ",
        //         style: AppTheme.subheading2.copyWith(
        //           color: Colors.white,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // AppTheme.height(8),
        // GestureDetector(
        //   onTap: () {},
        //   child: IntrinsicWidth(
        //     // This ensures the width is as long as its content
        //     child: Container(
        //       decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.circular(50),
        //         border: Border.all(color: AppTheme.appColor, width: 2),
        //       ),
        //       child: Center(
        //         child: Padding(
        //           padding:
        //               const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        //           child: Text(
        //             "I already have an Account",
        //             style: AppTheme.subheading2.copyWith(
        //               color: AppTheme.appColor,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
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
