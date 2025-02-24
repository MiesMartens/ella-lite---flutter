import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/onboarding_controller.dart';
import '../core/app_theme.dart';
import 'onboarding_wrapper.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  OnboardingController onboardingController = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
            flex: 3,
            child: Stack(
              // alignment: Alignment.bottomCenter,
              children: [
                Container(
                  color: Colors.white,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/logoPink.png",
                              height: 50,
                            )
                          ],
                        ),
                        Expanded(child: OnboardingWrapper()),
                        // FadeInLeft(child: PageThreeOnboarding()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // SizedBox(),
                            Text(
                              "Privacy Policies",
                              style: AppTheme.smallText.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppTheme.lightText),
                            ),
                            Text(
                              "Terms & Conditions",
                              style: AppTheme.smallText.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppTheme.lightText),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(80.0),
                //   child: FadeInUp(
                //     child: Container(
                //       width: 500,
                //       decoration: BoxDecoration(
                //       color: Colors.white,
                //         boxShadow: [BoxShadow(color: AppTheme.deactivatedText,blurRadius: 8,spreadRadius: 2)],borderRadius: BorderRadius.circular(100)),
                //       child: Padding(
                //         padding: const EdgeInsets.all(20.0),
                //         child: Row(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Container(
                //               clipBehavior: Clip.antiAlias,
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(40)),
                //               child: CustomNetworkImage(
                //                 height: 50,
                //                 width: 50,
                //                 url:
                //                     'https://media.licdn.com/dms/image/v2/D5603AQGM5wxBUCCzWA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1709992265583?e=1745452800&v=beta&t=bCklGf-ZGQqn0CVDEpFbLfntlKjmSotzMCS0Gio_YrY',
                //               ),
                //             ),
                //             AppTheme.width(12),
                //             Expanded(
                //               child: Column(
                //                 mainAxisSize: MainAxisSize.min,
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //               Text(
                //                 "Kathryn Hawtin",
                //                 style: AppTheme.heading3,
                //               ),

                //               Text(
                //                 "I can't explain, how much Ella helped me. I feel healthy and fresh everyday, thank you, Ella.",
                //                 style: AppTheme.smallText.copyWith(height: 1),
                //               ),

                //               ],),
                //             ),

                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 400, bottom: 94.0,),
                //   child: Lottie.asset('assets/like.json',repeat: false,),
                // ),
              ],
            )),
        Expanded(
            flex: 4,
            child: Stack(
              children: [
                Lottie.asset("bg.json",
                    // frameRate: FrameRate.max,
                    fit: BoxFit.fitHeight,
                    height: MediaQuery.of(context).size.height),
                Container(
                  color: AppTheme.appColor.withOpacity(0.4),
                ),
                // Center(
                //   child: Lottie.asset("happyintro.json",repeat: false
                //       ),
                // ),
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                  ),
                ),
              ],
            )),
      ],
    ));
  }
}
