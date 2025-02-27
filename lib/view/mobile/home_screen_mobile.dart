import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/app_theme.dart';
import '../../widget/cache_image.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

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
                                      "We focus on 30+ different plant foods weekly because",
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
              height: 2000,
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
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
