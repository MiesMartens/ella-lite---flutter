import 'package:ella_lite/widget/button.dart';
import 'package:ella_lite/widget/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../core/app_theme.dart';
import '../../widget/cache_image.dart';

class HomeScreenMobile extends StatelessWidget {
  HomeScreenMobile({super.key});

  List<String> recipe = [
    "Wash and chop the kale into small pieces.",
    "Boil a pot of water and blanch the kale for 2 minutes, then drain.",
    "In a large pot, heat some oil and sauté chopped onions until translucent.",
    "Add the blanched kale to the pot and stir well.",
    "Pour in vegetable broth and let it simmer for about 30 minutes.",
    "Add slices of smoked sausage (Pinkel) and let them cook with the kale for another 15 minutes.",
    "Season with salt, pepper, and mustard to taste.",
    "Serve hot with boiled or mashed potatoes."
  ];
  RxBool editDish = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.lightBackgroundColor,
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(34)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child: CustomNetworkImage(
                            height: 45,
                            width: 45,
                            url:
                                'https://media.licdn.com/dms/image/v2/D5603AQGM5wxBUCCzWA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1709992265583?e=1745452800&v=beta&t=bCklGf-ZGQqn0CVDEpFbLfntlKjmSotzMCS0Gio_YrY',
                          ),
                        ),
                        AppTheme.width(12),
                        Text(
                          "Kathryn Hawtin",
                          style: AppTheme.heading3,
                        ),
                        AppTheme.width(12),
                        Container(
                          decoration: BoxDecoration(
                              color: AppTheme.appColor,
                              borderRadius: BorderRadius.circular(40)),
                          child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_down_rounded)),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppTheme.appColor,
                          borderRadius: BorderRadius.circular(40)),
                      child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(Icons.notifications_rounded)),
                    ),
                    AppTheme.width(12),
                    Container(
                      decoration: BoxDecoration(
                          color: AppTheme.appColor,
                          borderRadius: BorderRadius.circular(40)),
                      child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(Icons.search_rounded)),
                    )
                  ],
                )
              ],
            ),
          ),
          // Text(
          //   "Plant Diversity Goal",
          //   style: AppTheme.subheading,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Goals",
                                style: AppTheme.subheading.copyWith(height: 1),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: AppTheme.smallText,
                                  text:
                                      "We focus on 30+ different plant foods weekly",
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppTheme.deactivatedText, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.arrow_up_right,
                                size: 18,
                                color: AppTheme.darkText,
                                weight: 0.1,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    AppTheme.height(12),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color:
                                AppTheme.lightBackgroundColor.withOpacity(0.6),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Weekly Plant \nDiversity Goal",
                                style: AppTheme.heading2.copyWith(height: 1.1),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(" " + 12.toString(),
                                      style: AppTheme.heading.copyWith(
                                          height: 1,
                                          color: AppTheme.appColor,
                                          fontSize: 52)),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Text('/30    ',
                                        style: AppTheme.subheading3.copyWith(
                                            color: AppTheme.darkText)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // if (footers.isNotEmpty)
                    //   SizedBox(
                    //     height: 34,
                    //     child: ListView.builder(
                    //         scrollDirection: Axis.horizontal,
                    //         itemCount: footers.length,
                    //         itemBuilder: (context, footerIndex) {
                    //           return Padding(
                    //             padding: const EdgeInsets.only(right: 2),
                    //             child: Container(
                    //               decoration: BoxDecoration(
                    //                   border: Border.all(
                    //                       width: 1, color: AppTheme.lightAppColor),
                    //                   borderRadius: BorderRadius.circular(40),
                    //                   color:
                    //                       AppTheme.lightAppColor.withOpacity(0.2)),
                    //               child: Padding(
                    //                 padding: const EdgeInsets.symmetric(
                    //                     vertical: 6, horizontal: 12),
                    //                 child: Text(
                    //                   footers[footerIndex],
                    //                   style: AppTheme.smallText.copyWith(
                    //                       color: AppTheme.lightAppColor,
                    //                       fontWeight: FontWeight.w500),
                    //                 ),
                    //               ),
                    //             ),
                    //           );
                    //         }),
                    //   )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              // height: 2000,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Todays Meals",
                                style: AppTheme.subheading.copyWith(height: 1),
                              ),
                              RichText(
                                text: TextSpan(
                                    style: AppTheme.smallText,
                                    text: "Your Todays meals contain ",
                                    children: [
                                      TextSpan(
                                          text: '3 plants',
                                          style: AppTheme.smallText.copyWith(
                                            color: AppTheme.appColor,
                                            fontWeight: FontWeight.bold,
                                          ))
                                    ]),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppTheme.deactivatedText, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.arrow_up_right,
                                size: 18,
                                color: AppTheme.darkText,
                                weight: 0.1,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    AppTheme.height(16),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar_today,
                                  color: AppTheme.darkText,
                                ),
                                AppTheme.width(12),
                                Text(
                                  "Sun, 23 january 2025",
                                  style: AppTheme.subheading3,
                                ),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: AppTheme.deactivatedText.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    AppTheme.height(12),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: AppTheme.lightBackgroundColor.withOpacity(0.4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Grünkohl mit Pinkel",
                                    style: AppTheme.subheading2,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      size: 14,
                                      color: AppTheme.darkText,
                                    ),
                                    Text(
                                      " Breakfast",
                                      style: AppTheme.smallText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            AppTheme.height(12),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 24),
                                    child: Text(
                                      "A hearty meal featuring kale (Grünkohl) cooked with onions, mustard, and spices, often served with smoked sausage and potatoes. Another plant-based option is Kartoffelsalat, a tangy potato salad made with vinegar, mustard, and fresh herbs. 🌿🥔",
                                      style: AppTheme.smallText,
                                      maxLines: 3,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(" +" + 2.toString(),
                                            style: AppTheme.heading.copyWith(
                                              height: 1,
                                              color: AppTheme.appColor,
                                            )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 4),
                                          child: Text(' plants',
                                              style: AppTheme.subheading3
                                                  .copyWith(
                                                      color:
                                                          AppTheme.appColor)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "+ Corriander\n+ Tulsi Leaf",
                                      textAlign: TextAlign.end,
                                      style: AppTheme.smallText.copyWith(
                                          color: AppTheme.appColor,
                                          fontSize: 10,
                                          height: 1),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            AppTheme.height(12),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.deactivatedText
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.bag_fill,
                                          size: 12,
                                          color: Colors.brown,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " 4",
                                                style: AppTheme.smallText
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            AppTheme.darkText),
                                              ),
                                              TextSpan(
                                                text: " Ingredients",
                                                style: AppTheme.smallText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                AppTheme.width(2),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.deactivatedText
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.flame_fill,
                                          size: 12,
                                          color: Colors.orange,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " 310",
                                                style: AppTheme.smallText
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            AppTheme.darkText),
                                              ),
                                              TextSpan(
                                                text: " Kcal",
                                                style: AppTheme.smallText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                AppTheme.width(2),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.deactivatedText
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.timer_fill,
                                          size: 12,
                                          color: Colors.blue[400],
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " 20",
                                                style: AppTheme.smallText
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            AppTheme.darkText),
                                              ),
                                              TextSpan(
                                                text: " mins",
                                                style: AppTheme.smallText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    AppTheme.height(6),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: AppTheme.lightBackgroundColor.withOpacity(0.4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Lunch",
                                    style: AppTheme.subheading2,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      size: 14,
                                      color: AppTheme.darkText,
                                    ),
                                    Text(
                                      " 11:00AM - 2:00PM",
                                      style: AppTheme.smallText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            AppTheme.height(12),
                            Row(
                              children: [
                                Expanded(
                                    child: Stack(
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.white),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://pinchofyum.com/wp-content/uploads/Chicken-Sweet-Potato-Meal-Prep-Bowls-Recipe.jpg')),
                                          color: AppTheme.deactivatedText,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 30.0),
                                      child: Container(
                                        height: 55,
                                        width: 55,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2, color: Colors.white),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://hips.hearstapps.com/hmg-prod/images/family-meal-ideas-cracker-crusted-cod-with-green-beans-67802597b8a19.png?crop=1xw:1xh;center,top&resize=980:*')),
                                            color: AppTheme.deactivatedText,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 60.0),
                                      child: Container(
                                        height: 55,
                                        width: 55,
                                        child: Icon(
                                          Icons.add,
                                          color: AppTheme.darkText,
                                        ),
                                        decoration: BoxDecoration(
                                            color: AppTheme.deactivatedText,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                      ),
                                    )
                                  ],
                                )),
                                // Expanded(
                                //   child: Padding(
                                //     padding: const EdgeInsets.only(right: 24),
                                //     child: Text(
                                //       "A nutritious and hearty stew made with lentils, carrots, celery, and potatoes, flavored with herbs and spices. It's high in protein, fiber, and perfect for a healthy, plant-based meal. 🥕🥔🥣",
                                //       style: AppTheme.smallText,
                                //       maxLines: 3,
                                //     ),
                                //   ),
                                // ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(" +" + 3.toString(),
                                            style: AppTheme.heading.copyWith(
                                              height: 1,
                                              color: AppTheme.appColor,
                                            )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 4),
                                          child: Text(' plants',
                                              style: AppTheme.subheading3
                                                  .copyWith(
                                                      color:
                                                          AppTheme.appColor)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "+ Corriander\n+ Spinach\n+ Brocolli",
                                      textAlign: TextAlign.end,
                                      style: AppTheme.smallText.copyWith(
                                          color: AppTheme.appColor,
                                          fontSize: 10,
                                          height: 1),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            AppTheme.height(12),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.deactivatedText
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.bag_fill,
                                          size: 12,
                                          color: Colors.brown,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " 7",
                                                style: AppTheme.smallText
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            AppTheme.darkText),
                                              ),
                                              TextSpan(
                                                text: " Ingredients",
                                                style: AppTheme.smallText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                AppTheme.width(2),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.deactivatedText
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.flame_fill,
                                          size: 12,
                                          color: Colors.orange,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " 550",
                                                style: AppTheme.smallText
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            AppTheme.darkText),
                                              ),
                                              TextSpan(
                                                text: " Kcal",
                                                style: AppTheme.smallText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                AppTheme.width(2),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.deactivatedText
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.timer_fill,
                                          size: 12,
                                          color: Colors.blue[400],
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " 30",
                                                style: AppTheme.smallText
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            AppTheme.darkText),
                                              ),
                                              TextSpan(
                                                text: " mins",
                                                style: AppTheme.smallText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    AppTheme.height(6),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: AppTheme.lightBackgroundColor.withOpacity(0.4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Kartoffelsalat",
                                    style: AppTheme.subheading2,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      size: 14,
                                      color: AppTheme.darkText,
                                    ),
                                    Text(
                                      " Dinner",
                                      style: AppTheme.smallText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            AppTheme.height(12),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 24),
                                    child: Text(
                                      "A classic dish made with boiled potatoes, fresh herbs, vinegar, and mustard dressing. This plant-based version is light, tangy, and packed with nutrients, making it a healthy and delicious choice. 🥔🥗",
                                      style: AppTheme.smallText,
                                      maxLines: 3,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(" +" + 1.toString(),
                                            style: AppTheme.heading.copyWith(
                                              height: 1,
                                              color: AppTheme.appColor,
                                            )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 4),
                                          child: Text(' plants',
                                              style: AppTheme.subheading3
                                                  .copyWith(
                                                      color:
                                                          AppTheme.appColor)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "+ spinach",
                                      textAlign: TextAlign.end,
                                      style: AppTheme.smallText.copyWith(
                                          color: AppTheme.appColor,
                                          fontSize: 10,
                                          height: 1),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            AppTheme.height(12),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.deactivatedText
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.bag_fill,
                                          size: 12,
                                          color: Colors.brown,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " 6",
                                                style: AppTheme.smallText
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            AppTheme.darkText),
                                              ),
                                              TextSpan(
                                                text: " Ingredients",
                                                style: AppTheme.smallText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                AppTheme.width(2),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.deactivatedText
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.flame_fill,
                                          size: 12,
                                          color: Colors.orange,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " 450",
                                                style: AppTheme.smallText
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            AppTheme.darkText),
                                              ),
                                              TextSpan(
                                                text: " Kcal",
                                                style: AppTheme.smallText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                AppTheme.width(2),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.deactivatedText
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.timer_fill,
                                          size: 12,
                                          color: Colors.blue[400],
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " 40",
                                                style: AppTheme.smallText
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            AppTheme.darkText),
                                              ),
                                              TextSpan(
                                                text: " mins",
                                                style: AppTheme.smallText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              // height: 2000,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Week Meal Plan",
                                style: AppTheme.subheading.copyWith(height: 1),
                              ),
                              RichText(
                                text: TextSpan(
                                    style: AppTheme.smallText,
                                    text:
                                        "We curate you meal plan such that you consume ",
                                    children: [
                                      TextSpan(
                                          text: '30 diverse plants',
                                          style: AppTheme.smallText.copyWith(
                                            color: AppTheme.appColor,
                                            fontWeight: FontWeight.bold,
                                          ))
                                    ]),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppTheme.deactivatedText, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.arrow_up_right,
                                size: 18,
                                color: AppTheme.darkText,
                                weight: 0.1,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    AppTheme.height(16),
                    Text("Breakfast", style: AppTheme.subheading2),
                    AppTheme.height(6),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: AppTheme.lightBackgroundColor
                                  .withOpacity(0.4),
                            ),
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                splashColor:
                                    Colors.transparent, // Removes splash effect
                                highlightColor: Colors
                                    .transparent, // Removes highlight effect
                              ),
                              child: ExpansionTile(
                                minTileHeight: 80,
                                shape: Border.all(
                                    width: 0,
                                    color: Colors
                                        .transparent), // Removes the bottom border when expanded
                                collapsedShape: Border.all(
                                    width: 0, color: Colors.transparent),
                                title: Text(
                                  "Grünkohl mit Pinkel",
                                  style:
                                      AppTheme.subheading2.copyWith(height: 1),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppTheme.deactivatedText,
                                            width: 2),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(9.0),
                                        child: Center(
                                          child: Icon(
                                            CupertinoIcons.add,
                                            size: 18,
                                            color: AppTheme.darkText,
                                            weight: 0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    AppTheme.width(6),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppTheme.deactivatedText,
                                            width: 2),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(9.0),
                                        child: Center(
                                          child: Icon(
                                            CupertinoIcons.check_mark,
                                            size: 18,
                                            color: AppTheme.appColor,
                                            weight: 0.1,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                // trailing: Column(
                                //   mainAxisSize: MainAxisSize.min,
                                //   crossAxisAlignment: CrossAxisAlignment.end,
                                //   mainAxisAlignment: MainAxisAlignment.end,
                                //   children: [
                                //     Row(
                                //       mainAxisSize: MainAxisSize.min,
                                //               crossAxisAlignment:
                                //                   CrossAxisAlignment.end,
                                //               children: [
                                //                 Text(" +" + 2.toString(),
                                //                     style: AppTheme.subheading
                                //                         .copyWith(
                                //                       height: 1,
                                //                       color: AppTheme.appColor,
                                //                     )),
                                //                 Padding(
                                //                   padding:
                                //                       const EdgeInsets.only(
                                //                           bottom: 4),
                                //                   child: Text(' plants',
                                //                       style: AppTheme
                                //                           .subheading3
                                //                           .copyWith(
                                //                               color: AppTheme
                                //                                   .appColor)),
                                //                 ),
                                //               ],
                                //             ),
                                //     Text(
                                //       "+ Corriander\n+ Tulsi Leaf",
                                //       textAlign: TextAlign.end,
                                //       style: AppTheme.smallText.copyWith(
                                //           color: AppTheme.appColor,
                                //           fontSize: 10,
                                //           height: 1),
                                //     ),
                                //   ],
                                // ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppTheme.deactivatedText
                                              .withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 4),
                                          child: Row(
                                            children: [
                                              Icon(
                                                CupertinoIcons.tree,
                                                size: 12,
                                                color: AppTheme.appColor,
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: " 2",
                                                      style: AppTheme.smallText
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: AppTheme
                                                                  .darkText),
                                                    ),
                                                    TextSpan(
                                                      text: " Plants",
                                                      style: AppTheme.smallText,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      AppTheme.width(2),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppTheme.deactivatedText
                                              .withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 4),
                                          child: Row(
                                            children: [
                                              Icon(
                                                CupertinoIcons.flame_fill,
                                                size: 12,
                                                color: Colors.orange,
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: " 310",
                                                      style: AppTheme.smallText
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: AppTheme
                                                                  .darkText),
                                                    ),
                                                    TextSpan(
                                                      text: " Kcal",
                                                      style: AppTheme.smallText,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      AppTheme.width(2),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppTheme.deactivatedText
                                              .withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 4),
                                          child: Row(
                                            children: [
                                              Icon(
                                                CupertinoIcons.timer_fill,
                                                size: 12,
                                                color: Colors.blue[400],
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: " 20",
                                                      style: AppTheme.smallText
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: AppTheme
                                                                  .darkText),
                                                    ),
                                                    TextSpan(
                                                      text: " mins",
                                                      style: AppTheme.smallText,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  AppTheme.height(6),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 24),
                                            child: Text(
                                              "A classic dish made with boiled potatoes, fresh herbs, vinegar, and mustard dressing. This plant-based version is light, tangy, and packed with nutrients, making it a healthy and delicious choice. 🥔🥗",
                                              style: AppTheme.smallText,
                                              maxLines: 3,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(" +" + 1.toString(),
                                                    style: AppTheme.heading
                                                        .copyWith(
                                                      height: 1,
                                                      color: AppTheme.appColor,
                                                    )),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 4),
                                                  child: Text(' plants',
                                                      style: AppTheme
                                                          .subheading3
                                                          .copyWith(
                                                              color: AppTheme
                                                                  .appColor)),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "+ spinach",
                                              textAlign: TextAlign.end,
                                              style: AppTheme.smallText
                                                  .copyWith(
                                                      color: AppTheme.appColor,
                                                      fontSize: 10,
                                                      height: 1),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  AppTheme.height(6),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Text(
                                      "Ingredients",
                                      style: AppTheme.subheading2,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  AppTheme.height(4),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Wrap(
                                      spacing: 2.0,
                                      runSpacing: 2.0,
                                      children: [
                                        "Corriander",
                                        "Methi",
                                        "Roshan",
                                        "Corriander",
                                        "Methi",
                                        "Roshan"
                                      ].map((alert) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              color: AppTheme.deactivatedText,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 6, horizontal: 12),
                                            child: RichText(
                                              text: TextSpan(
                                                style: AppTheme.subheading3,
                                                text: alert,
                                                children: [
                                                  TextSpan(
                                                    style: AppTheme.subheading3,
                                                    text: " x3",
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  AppTheme.height(12),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Text(
                                      "Intructions",
                                      style: AppTheme.subheading2,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  AppTheme.height(4),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: recipe.length,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 2),
                                          child: RichText(
                                            text: TextSpan(
                                              style: AppTheme.subheading3
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                              text: "${index + 1}.",
                                              children: [
                                                TextSpan(
                                                  style: AppTheme.subheading3
                                                      .copyWith(
                                                          fontWeight: FontWeight
                                                              .normal),
                                                  text: " ${recipe[index]}",
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  AppTheme.height(12),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Text(
                                      "Recipe Video",
                                      style: AppTheme.subheading2,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  AppTheme.height(4),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Container(
                                          height: 200,
                                          child: Stack(
                                            children: [
                                              Center(
                                                child: Image.asset(
                                                  'assets/dish.jpg',
                                                  fit: BoxFit.fitWidth,
                                                  alignment: Alignment.center,
                                                ),
                                              ),
                                              Container(
                                                color: Colors.black38,
                                              ),
                                              Center(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Icon(
                                                      CupertinoIcons.play_fill,
                                                      color: Colors.white,
                                                      size: 34,
                                                    ),
                                                    AppTheme.height(2),
                                                    Text(
                                                      "Play",
                                                      style: AppTheme.smallText
                                                          .copyWith(
                                                              color:
                                                                  Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              color: AppTheme.deactivatedText,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                        ),
                                      )),
                                  AppTheme.height(6),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Obx(() {
                                      return GestureDetector(
                                        onTap: () {
                                          editDish.value = true;
                                        },
                                        child: editDish.value
                                            ? Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: CustomTextField(
                                                        style:
                                                            AppTheme.smallText,
                                                        nameController:
                                                            TextEditingController(),
                                                        maxLines: 2,
                                                        minLines: 2,
                                                        hintText:
                                                            "Write ingredient, or thing you don't like or want different",
                                                        icon: Icons.fork_right,
                                                        validator: (v) {}),
                                                  ),
                                                  AppTheme.width(6),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppTheme.appColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40)),
                                                    child: IconButton(
                                                        color: Colors.white,
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .refresh_rounded)),
                                                  ),
                                                ],
                                              )
                                            : Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Don't like the ingredients? Tap See Alternatives  ",
                                                    style: AppTheme.smallText
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            decorationColor:
                                                                AppTheme
                                                                    .lightText),
                                                  ),
                                                  Icon(
                                                    Icons.refresh_rounded,
                                                    color: AppTheme.lightText,
                                                  ),
                                                ],
                                              ),
                                      );
                                    }),
                                  ),
                                  AppTheme.height(12),
                                  // Align(
                                  //   alignment: Alignment.centerLeft,
                                  //   child: Padding(
                                  //     padding:
                                  //         const EdgeInsets.symmetric(horizontal: 16),
                                  //     child: Wrap(
                                  //       spacing: 2.0,
                                  //       runSpacing: 2.0,
                                  //       children: entry.value.map((alert) {
                                  //         String alertName = alert['AlertName']!;
                                  //         String description = alert['Description']!;
                                  //         var bool = random.nextBool();

                                  //         return Tooltip(
                                  //           triggerMode: TooltipTriggerMode.tap,
                                  //           padding: const EdgeInsets.all(8),
                                  //           margin:
                                  //               EdgeInsets.symmetric(horizontal: 36),
                                  //           decoration: BoxDecoration(
                                  //             color: Colors.white,
                                  //             borderRadius: BorderRadius.circular(12),
                                  //             boxShadow: [
                                  //               BoxShadow(
                                  //                 color: AppTheme.deactivatedText,
                                  //                 blurRadius: 5,
                                  //                 spreadRadius: 1,
                                  //               ),
                                  //             ],
                                  //           ),
                                  //           textStyle: AppTheme.smallText
                                  //               .copyWith(color: AppTheme.darkText),
                                  //           showDuration: Duration(seconds: 2),
                                  //           preferBelow: false,
                                  //           message:
                                  //               description, // Show the correct description

                                  //           child: StripedContainer(
                                  //             color1: bool
                                  //                 ? Colors.green[500]!
                                  //                 : Color.fromARGB(255, 213, 60, 57),
                                  //             color2: bool
                                  //                 ? const Color.fromARGB(255, 78, 182, 82)
                                  //                 : Color.fromARGB(255, 234, 64, 61),
                                  //             borderRadius: 10,
                                  //             stripeWidth: 10,
                                  //             child: Padding(
                                  //               padding: const EdgeInsets.symmetric(
                                  //                   vertical: 6, horizontal: 12),
                                  //               child: RichText(
                                  //                 text: TextSpan(
                                  //                   style: AppTheme.subheading3
                                  //                       .copyWith(color: Colors.white),
                                  //                   text: alertName + ' ',
                                  //                   children: [
                                  //                     WidgetSpan(
                                  //                       child: Padding(
                                  //                         padding: EdgeInsets.only(
                                  //                             bottom: 2),
                                  //                         child: Icon(
                                  //                           CupertinoIcons
                                  //                               .info_circle,
                                  //                           color: Colors.white,
                                  //                           size: 13,
                                  //                         ),
                                  //                       ),
                                  //                     ),
                                  //                   ],
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //         );
                                  //       }).toList(),
                                  //     ),
                                  //   ),
                                  // ),
                                  // AppTheme.height(16),
                                ],
                              ),
                              // Padding(
                              //   padding: EdgeInsets.all(12),
                              //   child: Column(
                              //     children: [
                              //       Row(
                              //         children: [
                              //           Expanded(
                              //             child: Column(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               mainAxisAlignment:
                              //                   MainAxisAlignment.start,
                              //               children: [
                              //                 Text(
                              //                   "Grünkohl mit Pinkel",
                              //                   style: AppTheme.subheading2,
                              //                 ),
                              //                 Text(
                              //                   "nnfoa k dja  ojv oj do od   ",
                              //                   style: AppTheme.smallText,
                              //                 ),
                              //               ],
                              //             ),
                              //           ),
                              //           Column(
                              //             crossAxisAlignment:
                              //                 CrossAxisAlignment.end,
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.end,
                              //             children: [
                              //               Row(
                              //                 crossAxisAlignment:
                              //                     CrossAxisAlignment.end,
                              //                 children: [
                              //                   Text(" +" + 2.toString(),
                              //                       style: AppTheme.heading
                              //                           .copyWith(
                              //                         height: 1,
                              //                         color: AppTheme.appColor,
                              //                       )),
                              //                   Padding(
                              //                     padding:
                              //                         const EdgeInsets.only(
                              //                             bottom: 4),
                              //                     child: Text(' plants',
                              //                         style: AppTheme
                              //                             .subheading3
                              //                             .copyWith(
                              //                                 color: AppTheme
                              //                                     .appColor)),
                              //                   ),
                              //                 ],
                              //               ),
                              //               Text(
                              //                 "+ Corriander\n+ Tulsi Leaf",
                              //                 textAlign: TextAlign.end,
                              //                 style: AppTheme.smallText
                              //                     .copyWith(
                              //                         color: AppTheme.appColor,
                              //                         fontSize: 10,
                              //                         height: 1),
                              //               ),
                              //             ],
                              //           ),
                              //         ],
                              //       ),
                              //       Row(
                              //         children: [
                              //           Container(
                              //             decoration: BoxDecoration(
                              //               color: AppTheme.deactivatedText
                              //                   .withOpacity(0.6),
                              //               borderRadius:
                              //                   BorderRadius.circular(12),
                              //             ),
                              //             child: Padding(
                              //               padding: const EdgeInsets.symmetric(
                              //                   horizontal: 8, vertical: 4),
                              //               child: Row(
                              //                 children: [
                              //                   Icon(
                              //                     CupertinoIcons.bag_fill,
                              //                     size: 12,
                              //                     color: Colors.brown,
                              //                   ),
                              //                   RichText(
                              //                     text: TextSpan(
                              //                       children: [
                              //                         TextSpan(
                              //                           text: " 4",
                              //                           style: AppTheme
                              //                               .smallText
                              //                               .copyWith(
                              //                                   fontWeight:
                              //                                       FontWeight
                              //                                           .bold,
                              //                                   color: AppTheme
                              //                                       .darkText),
                              //                         ),
                              //                         TextSpan(
                              //                           text: " Ingredients",
                              //                           style:
                              //                               AppTheme.smallText,
                              //                         ),
                              //                       ],
                              //                     ),
                              //                   ),
                              //                 ],
                              //               ),
                              //             ),
                              //           ),
                              //           AppTheme.width(2),
                              //           Container(
                              //             decoration: BoxDecoration(
                              //               color: AppTheme.deactivatedText
                              //                   .withOpacity(0.6),
                              //               borderRadius:
                              //                   BorderRadius.circular(12),
                              //             ),
                              //             child: Padding(
                              //               padding: const EdgeInsets.symmetric(
                              //                   horizontal: 8, vertical: 4),
                              //               child: Row(
                              //                 children: [
                              //                   Icon(
                              //                     CupertinoIcons.flame_fill,
                              //                     size: 12,
                              //                     color: Colors.orange,
                              //                   ),
                              //                   RichText(
                              //                     text: TextSpan(
                              //                       children: [
                              //                         TextSpan(
                              //                           text: " 310",
                              //                           style: AppTheme
                              //                               .smallText
                              //                               .copyWith(
                              //                                   fontWeight:
                              //                                       FontWeight
                              //                                           .bold,
                              //                                   color: AppTheme
                              //                                       .darkText),
                              //                         ),
                              //                         TextSpan(
                              //                           text: " Kcal",
                              //                           style:
                              //                               AppTheme.smallText,
                              //                         ),
                              //                       ],
                              //                     ),
                              //                   ),
                              //                 ],
                              //               ),
                              //             ),
                              //           ),
                              //           AppTheme.width(2),
                              //           Container(
                              //             decoration: BoxDecoration(
                              //               color: AppTheme.deactivatedText
                              //                   .withOpacity(0.6),
                              //               borderRadius:
                              //                   BorderRadius.circular(12),
                              //             ),
                              //             child: Padding(
                              //               padding: const EdgeInsets.symmetric(
                              //                   horizontal: 8, vertical: 4),
                              //               child: Row(
                              //                 children: [
                              //                   Icon(
                              //                     CupertinoIcons.timer_fill,
                              //                     size: 12,
                              //                     color: Colors.blue[400],
                              //                   ),
                              //                   RichText(
                              //                     text: TextSpan(
                              //                       children: [
                              //                         TextSpan(
                              //                           text: " 20",
                              //                           style: AppTheme
                              //                               .smallText
                              //                               .copyWith(
                              //                                   fontWeight:
                              //                                       FontWeight
                              //                                           .bold,
                              //                                   color: AppTheme
                              //                                       .darkText),
                              //                         ),
                              //                         TextSpan(
                              //                           text: " mins",
                              //                           style:
                              //                               AppTheme.smallText,
                              //                         ),
                              //                       ],
                              //                     ),
                              //                   ),
                              //                 ],
                              //               ),
                              //             ),
                              //           ),
                              //         ],
                              //       )
                              //     ],
                              //   ),
                              // ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              // height: 2000,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shopping List",
                                style: AppTheme.subheading.copyWith(height: 1),
                              ),
                              RichText(
                                text: TextSpan(
                                    style: AppTheme.smallText,
                                    text:
                                        "You need to get this items this week",
                                    children: [
                                      // TextSpan(
                                      //     text: '30 diverse plants',
                                      //     style: AppTheme.smallText.copyWith(
                                      //       color: AppTheme.appColor,
                                      //       fontWeight: FontWeight.bold,
                                      //     ))
                                    ]),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppTheme.deactivatedText, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.arrow_up_right,
                                size: 18,
                                color: AppTheme.darkText,
                                weight: 0.1,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    AppTheme.height(6),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: RichText(
                                            text: TextSpan(
                                                text: "${index + 1}.",
                                                style: AppTheme.smallText
                                                    .copyWith(
                                                        color:
                                                            AppTheme.darkText),
                                                children: [
                                          TextSpan(
                                              text: "Corriander Powder",
                                              style: AppTheme.smallText),
                                        ]))),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: AppTheme.deactivatedText
                                              .withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2, horizontal: 7),
                                        child: Text(
                                          "100 g",
                                          style: AppTheme.subheading3,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              MySeparator(
                                color: AppTheme.lightText.withOpacity(0.4),
                                height: 2,
                              ),
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 8.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          // ignore: sort_child_properties_last
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20)),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
