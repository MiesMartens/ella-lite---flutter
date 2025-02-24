import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../controllers/onboarding_controller.dart';
import '../../core/app_theme.dart';
import '../../widget/button.dart';
import '../../widget/diet_card.dart';

class PageThreeOnboardingMobile extends StatelessWidget {
  PageThreeOnboardingMobile({
    super.key,
  });

  OnboardingController onboardingController = Get.find<OnboardingController>();

  var allergies = [
    // {
    //     "name": "Dairy Free",
    //     "image": "https://res.cloudinary.com/dlrl6ra82/image/upload/v1720088622/meal_planner/diets/ws4bk1ehoghdass1hytl.png",
    //     "diet_id": "66866e2dd10230d8807d8b8d"
    // },
    {
      "name": "Pescatarian",
      "image":
          "https://res.cloudinary.com/dlrl6ra82/image/upload/v1720087695/meal_planner/diets/akze20mfekxvabgdkxnj.png",
      "diet_id": "66866f2ed10230d8807d8b8e"
    },
    {
      "name": "Mediterranean",
      "image":
          "https://res.cloudinary.com/dlrl6ra82/image/upload/v1720087726/meal_planner/diets/dlr0m6owcgleeu4fu220.png",
      "diet_id": "668672e740804d6193073efc"
    },
    {
      "name": "Keto",
      "image":
          "https://res.cloudinary.com/dlrl6ra82/image/upload/v1720087749/meal_planner/diets/efddilsxdbdnjjjis6l5.png",
      "diet_id": "668674c5f0d9de5990da2d3b"
    },
    {
      "name": "Vegan",
      "image":
          "https://res.cloudinary.com/dlrl6ra82/image/upload/v1720087769/meal_planner/diets/fixq7mqtj9ozqkhpzjwz.png",
      "diet_id": "668674d9f0d9de5990da2d3c"
    },
    {
      "name": "Paleo",
      "image":
          "https://res.cloudinary.com/dlrl6ra82/image/upload/v1720087791/meal_planner/diets/hbrtzmifwikpwn4comaj.png",
      "diet_id": "668674eff0d9de5990da2d3d"
    },
    {
      "name": "Low Carb",
      "image":
          "https://res.cloudinary.com/dlrl6ra82/image/upload/v1720087821/meal_planner/diets/kxgjey2gc1fypnhcvsxa.png",
      "diet_id": "6686750df0d9de5990da2d3e"
    },
    {
      "name": "Vegetarian",
      "image":
          "https://res.cloudinary.com/dlrl6ra82/image/upload/v1720087839/meal_planner/diets/fmkstoyi8emjweqgrqq5.png",
      "diet_id": "66867520f0d9de5990da2d3f"
    },
    // {
    //     "name": "Gluten-Free",
    //     "image": "https://res.cloudinary.com/dlrl6ra82/image/upload/v1722594940/meal_planner/diets/f0zp0ynqt8z68a1pd9ug.png",
    //     "diet_id": "66ab6204eaf73f142d6a7d28"
    // },
    {
      "name": "High Protein",
      "image":
          "https://res.cloudinary.com/dlrl6ra82/image/upload/v1728974185/meal_planner/diets/o0r3wgnnpq9to50ofojv.png",
      "diet_id": "66f9ae85550ebd4ca45a0c43"
    },
    // {
    //     "name": "Non-Vegetarian",
    //     "image": "",
    //     "diet_id": "67334b71bb0f5aa2763f91b9"
    // }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: Text(
            "Are you avoiding any ingredients?",
            style: AppTheme.heading.copyWith(fontSize: 34),
            textAlign: TextAlign.center,
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "Any allergies? any thing you don't consume? helps us to give you right recommendations",
            style: AppTheme.smallText,
            textAlign: TextAlign.center,
          ),
        ),
        AppTheme.height(24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Wrap(
            spacing: 4,
            alignment: WrapAlignment.center,
            runSpacing: 4,
            children: [
              for (int i = 0; i < allergies.length; i++)
                DietCard(
                  clickable: true,
                  data: allergies[i],
                )
            ],
          ),
        ),
        AppTheme.height(24),
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
