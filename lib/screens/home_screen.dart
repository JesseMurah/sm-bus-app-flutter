import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:ui';

//import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:my_app/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Where do you want\nto travel?",
                          style: Styles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/person1.png"))),
                    ),
                  ],
                ),
                const Gap(40),
                const SizedBox(height: 30.0),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'From',
                          icon: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color(0xFFEEF8FF),
                            ),
                            child: const Icon(
                              Icons.location_on,
                              size: 25.0,
                              color: Color(
                                0xFF309DF1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(height: 40.0),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Date of Travel',
                          icon: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color(0xFFEEF8FF),
                            ),
                            child: const Icon(
                              Icons.calendar_month_rounded,
                              size: 25.0,
                              color: Color(
                                0xFF309DF1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(height: 40.0),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'To',
                          icon: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color(0xFFEEF8FF),
                            ),
                            child: const Icon(
                              Icons.location_on,
                              size: 25.0,
                              color: Color(
                                0xFF309DF1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 40.0,
                ),
                const Gap(20),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: TextButton(
                    onPressed: () => print("Search"),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                    ),
                    child: Text("Search"),
                  ),
                ),
              ])),
          const Gap(20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "All buses",
              style: Styles.headlineStyle2,
            ),
            InkWell(
                onTap: () {
                  print("You are tapped.");
                },
                child: Text(
                  "View all",
                  style: Styles.textStyle.copyWith(color: Colors.lightBlue),
                ))
          ])
        ],
      ),
    );
  }
}
