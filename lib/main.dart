import 'package:animate_do/animate_do.dart';
import 'package:ella_lite/core/app_theme.dart';

import 'package:get/get.dart';
import 'package:ella_lite/view/onboarding_page_three.dart';
import 'package:ella_lite/view/onboarding_page_two.dart';
import 'package:ella_lite/widget/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'view/onboarding_page_one.dart';
import 'view/onboarding_wrapper.dart';
import 'widget/cache_image.dart';
import 'widget/textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ella',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(initialPage: 0);
    super.initState();
  }

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
                        OnboardingWrapper(pageController: pageController),
                        // FadeInLeft(child: PageThreeOnboarding()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // SizedBox(),
                            Text(
                              "Protected by enterprise-grade encryption",
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
                // Lottie.asset("bg.json",
                //     frameRate: FrameRate.max,
                //     fit: BoxFit.fitHeight,
                //     height: MediaQuery.of(context).size.height),
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


class HexColorNew extends Color {
  HexColorNew(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }


}
