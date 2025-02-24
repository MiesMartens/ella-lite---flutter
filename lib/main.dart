import 'package:animate_do/animate_do.dart';
import 'package:ella_lite/core/app_theme.dart';
import 'package:ella_lite/view/home_screen.dart';
import 'package:ella_lite/view/mobile/landing_page_mobile.dart';

import 'package:get/get.dart';
import 'package:ella_lite/view/onboarding_page_three.dart';
import 'package:ella_lite/view/onboarding_page_two.dart';
import 'package:ella_lite/widget/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'controllers/onboarding_controller.dart';
import 'view/landing_page.dart';
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
      home: LandingPageMobile(),
    );
  }
}
