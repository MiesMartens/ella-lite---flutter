import 'package:animate_do/animate_do.dart';
import 'package:ella_lite/core/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/cache_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 7,
              child: Container(
                color: AppTheme.lightBackgroundColor,
                child: Row(
                  children: [
                    FadeInLeft(
                      child: Container(
                        width: 80,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/logo.png',
                              ),
                              AppTheme.height(40),
                              Expanded(
                                child: Column(
                                  children: [
                                    getIconButton(CupertinoIcons.home),
                                    AppTheme.height(6),
                                    getIconButton(
                                        CupertinoIcons.chart_bar_fill),
                                    AppTheme.height(6),
                                    getIconButton(
                                        CupertinoIcons.chat_bubble_fill),
                                    AppTheme.height(6),
                                    getIconButton(CupertinoIcons.doc_text_fill),
                                  ],
                                ),
                              ),
                              getIconButton(Icons.settings)
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: AppTheme.appColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(18),
                                topRight: Radius.circular(18))),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(34)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 2),
                                    child: Row(
                                      children: [
                                        Container(
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
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
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: IconButton(
                                              color: Colors.white,
                                              onPressed: () {},
                                              icon: Icon(Icons
                                                  .keyboard_arrow_down_rounded)),
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
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: IconButton(
                                          color: Colors.white,
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.notifications_rounded)),
                                    ),
                                    AppTheme.width(12),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: AppTheme.appColor,
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: IconButton(
                                          color: Colors.white,
                                          onPressed: () {},
                                          icon: Icon(Icons.search_rounded)),
                                    )
                                  ],
                                )
                              ],
                            ),
                            AppTheme.height(24),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Plant Goal",
                                        style: AppTheme.heading
                                            .copyWith(fontSize: 24),
                                        textAlign: TextAlign.start,
                                      ),
                                      AppTheme.height(12),
                                      Container(
                                        height: 340,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      )
                                    ],
                                  ),
                                ),
                                AppTheme.width(24),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "My Daily Target",
                                        style: AppTheme.heading
                                            .copyWith(fontSize: 24),
                                        textAlign: TextAlign.start,
                                      ),
                                      AppTheme.height(12),
                                      Container(
                                        height: 340,
                                        child: GridView(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              )
                                            ],
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 6,
                                                    mainAxisSpacing: 6)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Container(
            width: 0.6,
            color: AppTheme.lightText,
          ),
          Expanded(
              flex: 3,
              child: Container(
                color: AppTheme.lightBackgroundColor,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My Meal Plan",
                              style: AppTheme.heading,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppTheme.appColor,
                                  borderRadius: BorderRadius.circular(40)),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: Icon(Icons.add)),
                            )
                          ],
                        ),
                        AppTheme.height(34),
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
                              color: AppTheme.deactivatedText,
                              borderRadius: BorderRadius.circular(30)),
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  IconButton getIconButton(IconData icon) {
    return IconButton(
        splashColor: Colors.white,
        hoverColor: Colors.white.withOpacity(0.2),
        onPressed: () {},
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ));
  }
}
