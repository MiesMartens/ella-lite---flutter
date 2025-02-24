import 'package:animate_do/animate_do.dart';
import 'package:ella_lite/view/home_screen.dart';
import 'package:ella_lite/widget/cache_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/onboarding_controller.dart';
import '../core/app_theme.dart';
import '../widget/button.dart';
import '../widget/textfield.dart';

class PageSixOnboarding extends StatelessWidget {
  PageSixOnboarding({
    super.key,
  });

  OnboardingController onboardingController = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Text(
                "Save your personalized\nDe-bloating Plan",
                style: AppTheme.heading.copyWith(fontSize: 34),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        // AppTheme.height(8),
        // Text(
        //   "This helps us to track your progress and personalize your meals",
        //   style: AppTheme.smallText,
        //   textAlign: TextAlign.center,
        // ),
        // AppTheme.height(24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomTextField(
                      hintText: "First Name*",
                      icon: Icons.person,
                      validator: (v) {},
                      nameController: TextEditingController(),
                    ),
                  ),
                  AppTheme.width(6),
                  Expanded(
                    child: CustomTextField(
                      hintText: "Last Name",
                      icon: Icons.person,
                      validator: (v) {},
                      nameController: TextEditingController(),
                    ),
                  ),
                ],
              ),
              AppTheme.height(6),
              CustomTextField(
                hintText: "Email*",
                icon: CupertinoIcons.mail_solid,
                validator: (v) {},
                nameController: TextEditingController(),
              ),
              AppTheme.height(6),
              CustomTextField(
                hintText: "Password*",
                icon: CupertinoIcons.lock_fill,
                isObscure: true,
                validator: (v) {},
                nameController: TextEditingController(),
              ),
            ],
          ),
        ),
        AppTheme.height(25),
        CustomButton(
          onTap: () {
            Get.to(HomeScreen());
          },
          child: Row(
            children: [
              Text(
                "              Register",
                style: AppTheme.subheading2.copyWith(
                  color: Colors.white,
                ),
              ),
              // AppTheme.width(8),
              // ShakeX(
              //     infinite: true,
              //     duration: Duration(seconds: 3),
              //     from: 2,
              //     animate: true,
              //     child: Icon(
              //       Icons.arrow_forward_rounded,
              //       color: Colors.white,
              //       weight: 10,
              //     )),
              Text(
                "            ",
                style: AppTheme.subheading2.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        AppTheme.height(6),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "Already have an account? ",
            style: AppTheme.smallText,
          ),
          TextSpan(
            text: "Log In",
            style: AppTheme.smallText.copyWith(
                decoration: TextDecoration.underline,
                decorationColor: AppTheme.appColor,
                fontWeight: FontWeight.bold,
                color: AppTheme.appColor),
          ),
        ])),
        AppTheme.height(30),
        Row(
          children: [
            Expanded(
                child: Container(
              height: 1,
              color: AppTheme.deactivatedText,
            )),
            Text(
              "   or with   ",
              style: AppTheme.subheading3.copyWith(color: AppTheme.lightText),
            ),
            Expanded(
                child: Container(
              height: 1,
              color: AppTheme.deactivatedText,
            ))
          ],
        ),
        AppTheme.height(12),
        Container(
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppTheme.deactivatedText.withOpacity(0.5)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/google.webp',
                  width: 22,
                  height: 22,
                ),
              ),
              Text(
                "Register with Google",
                style: AppTheme.subheading3,
              )
            ],
          ),
        )
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
