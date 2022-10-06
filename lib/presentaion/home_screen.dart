import 'package:applogicq/utils/font_style.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundImage: AssetImage(
                                    "assets/images/Rectangle4216.png"),
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Hey",
                                        style: subheadStyle2,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        "Mr.Ravi",
                                        style: subheadStyle,
                                      ),
                                      Icon(Icons.expand_more_rounded)
                                    ],
                                  ),
                                  Text("What's your plan?",
                                      style: hintStyle.copyWith(fontSize: 16)),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.heart_broken),
                              SizedBox(width: 22),
                              Icon(Icons.notifications)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                          height: 56,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.3),
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                // focusColor: primaryColor,
                                // prefixIconColor: Colors.grey,
                                border: InputBorder.none,
                                hintStyle: hintStyle,
                                hintText:
                                    "Try Restaurant, Kids area, Coffee Shop...",
                                prefixIcon: Icon(Icons.search),
                                // fillColor: primaryColor
                              ),
                              // cursorColor: primaryColor,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 144,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0.3),
                                borderRadius: BorderRadius.circular(16)),
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: 144,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.60,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.celebration,
                                              color: primaryColor,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Giveaway alert!",
                                              style: subheadStyle,
                                            )
                                          ],
                                        ),
                                        Text(
                                          "FREE MESSAGE GIVEAWAY",
                                          style: subheadStyle2,
                                        ),
                                        Text(
                                          "👍 Like the teacher's day giveaway for chance to win.",
                                          style: bodyStyle.copyWith(
                                              fontSize: 16,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      );
                    })),
              ),
              SizedBox(height: 24),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border),
                                Text(
                                  "Recommended for you",
                                  style: hintStyle,
                                )
                              ],
                            ),
                            Text(
                              "Things To Do",
                              style: headingStyle3,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 350,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 7,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                child: Container(
                                    height: 350,
                                    width: 200,
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 350 / 2,
                                          child: Stack(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                16)),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/food.png"),
                                                        fit: BoxFit.cover)),
                                              ),
                                              Positioned(
                                                top: 8,
                                                right: 8,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8))),
                                                  padding: EdgeInsets.all(6),
                                                  child: Center(
                                                      child: Icon(Icons
                                                          .heart_broken_rounded)),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 8,
                                                right: 8,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8))),
                                                  padding: EdgeInsets.all(6),
                                                  child: Center(
                                                      child: Row(
                                                    children: [
                                                      Icon(Icons
                                                          .thumb_up_outlined),
                                                      SizedBox(width: 3),
                                                      Text("3K")
                                                    ],
                                                  )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Thai restaurant",
                                              style: subheadStyle2,
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              "\$\$\$",
                                              style: hintStyle,
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Text(
                                              "@RoyalDbayeh",
                                              style: hintStyle,
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Icon(Icons.location_on),
                                                SizedBox(width: 5),
                                                Text(
                                                  "Dbayeh",
                                                  style: hintStyle,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Icon(Icons.restaurant),
                                                SizedBox(width: 5),
                                                Text(
                                                  "Restaurent",
                                                  style: hintStyle,
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  )),
              SizedBox(height: 24),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.lightbulb),
                                Text(
                                  "Featured",
                                  style: hintStyle,
                                )
                              ],
                            ),
                            Text(
                              "Businesses",
                              style: headingStyle3,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 280,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 7,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                child: Container(
                                    height: 350,
                                    width: 200,
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 350 / 2,
                                          child: Stack(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                16)),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/food1.png"),
                                                        fit: BoxFit.cover)),
                                              ),
                                              Positioned(
                                                top: 8,
                                                right: 8,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8))),
                                                  padding: EdgeInsets.all(6),
                                                  child: Center(
                                                      child: Icon(Icons
                                                          .heart_broken_rounded)),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 8,
                                                right: 8,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8))),
                                                  padding: EdgeInsets.all(6),
                                                  child: Center(
                                                      child: Row(
                                                    children: [
                                                      Icon(Icons
                                                          .thumb_up_outlined),
                                                      SizedBox(width: 3),
                                                      Text("3K")
                                                    ],
                                                  )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Famous Lunch",
                                              style: subheadStyle2,
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.location_on),
                                                SizedBox(width: 5),
                                                Text(
                                                  "Kent, Utah",
                                                  style: hintStyle,
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  )),
              SizedBox(
                height: 24,
              ),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border),
                                Text(
                                  "Recommended for you",
                                  style: hintStyle,
                                )
                              ],
                            ),
                            Text(
                              "Upcoming events",
                              style: headingStyle3,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 7,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                child: Container(
                                    height: 350,
                                    width: 200,
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 350 / 2,
                                          child: Stack(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                16)),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/upcoming.png"),
                                                        fit: BoxFit.cover)),
                                              ),
                                              Positioned(
                                                top: 8,
                                                right: 8,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8))),
                                                  padding: EdgeInsets.all(6),
                                                  child: Center(
                                                      child: Icon(Icons
                                                          .heart_broken_rounded)),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 8,
                                                right: 8,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8))),
                                                  padding: EdgeInsets.all(6),
                                                  child: Center(
                                                      child: Row(
                                                    children: [
                                                      Icon(Icons
                                                          .thumb_up_outlined),
                                                      SizedBox(width: 3),
                                                      Text("3K")
                                                    ],
                                                  )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(Icons.calendar_month,
                                                        size: 13),
                                                    SizedBox(
                                                      width: 1,
                                                    ),
                                                    Text(
                                                      "5 April 2022",
                                                      style: hintStyle,
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.timer, size: 13),
                                                    SizedBox(
                                                      width: 1,
                                                    ),
                                                    Text(
                                                      "23.00",
                                                      style: hintStyle,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "Stand Up Comedy With Jeff",
                                              style: subheadStyle2,
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              "Starting LBP 400.00",
                                              style: hintStyle,
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Text(
                                              "@  Food Market Zone",
                                              style: hintStyle,
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Icon(Icons.location_on),
                                                SizedBox(width: 5),
                                                Text(
                                                  "Lansing, lllinois",
                                                  style: hintStyle,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Icon(Icons.theater_comedy),
                                                SizedBox(width: 5),
                                                Text(
                                                  "Restaurent",
                                                  style: hintStyle,
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  )),
              SizedBox(
                height: 24,
              ),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border),
                                Text(
                                  "Loved by Users",
                                  style: hintStyle,
                                )
                              ],
                            ),
                            Text(
                              "Mini guides",
                              style: headingStyle3,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: double.infinity,
                          child: Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            runSpacing: 10,
                            children: [
                              MiniGuideCard("Saida", "31"),
                              MiniGuideCard("Tripoli", "39"),
                              MiniGuideCard("Hammana", "20"),
                              MiniGuideCard("Beirut", "30"),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text("See all mini guides")),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  )),
              SizedBox(
                height: 24,
              ),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.thumb_up_sharp),
                                SizedBox(width: 3),
                                Text(
                                  "Popular",
                                  style: hintStyle,
                                )
                              ],
                            ),
                            Text(
                              "Popular Categories",
                              style: headingStyle3,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: double.infinity,
                          child: Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            runSpacing: 10,
                            children: [
                              PopularCategoriesCard(
                                  "Restaurent", "28", Icons.restaurant_menu),
                              PopularCategoriesCard(
                                  "Coffee Shop", "24", Icons.coffee),
                              PopularCategoriesCard(
                                  "Kids", "22", Icons.child_care),
                              PopularCategoriesCard(
                                  "Movie", "34", Icons.movie_outlined),
                              PopularCategoriesCard(
                                  "Museum", "28", Icons.museum),
                              PopularCategoriesCard(
                                  "Theatre", "32", Icons.theaters),
                            ],
                          )),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  )),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget MiniGuideCard(String city, String count) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/miniguide.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ))),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(city, style: subheadStyle2.copyWith(color: Colors.white)),
            SizedBox(height: 3),
            Text("$count Listings",
                style: bodyStyle.copyWith(color: Colors.white)),
          ],
        )
      ],
    );
  }

  Widget PopularCategoriesCard(String category, String count, IconData icon) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            width: 110,
            height: 120,
            decoration: BoxDecoration(
                border: Border.all(width: 0.3),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ))),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 30),
            SizedBox(height: 3),
            Text(category, style: subheadStyle2),
            SizedBox(height: 3),
            Text("$count Listings", style: hintStyle),
          ],
        )
      ],
    );
  }
}
