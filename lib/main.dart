import 'package:ella_lite/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widget/textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ella',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(64.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/logoPink.png",height: 50,)
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 14),
                              child: Text(
                                "Your personal\nDe-bloating App",
                                style: AppTheme.heading.copyWith(fontSize: 34),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Lottie.asset("text_underline.json", width: 180),
                          ],
                        ),
                        AppTheme.height(20),
                        Text("Worry not! We are here to take care of your gut health.",style: AppTheme.smallText,),
                        AppTheme.height(60),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal:  120.0),
                        //   child: CustomTextField(validator: (value){},controller: TextEditingController(),hintText: "Email",),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal:  120.0),
                        //   child: CustomTextField(validator: (value){},controller: TextEditingController(),hintText: "Email",),
                        // )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
            )),
        Expanded(
            flex: 4,
            child: Stack(
              children: [
                Lottie.asset("bg.json",
                    frameRate: FrameRate.max,
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
