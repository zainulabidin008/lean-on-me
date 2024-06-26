import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean_on_me1/view/news_services.dart';
import 'package:lean_on_me1/view/support_services.dart';
import 'package:lean_on_me1/view/support_services/all_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'drugs_facts_services.dart';
import 'mental_health_services.dart';
import 'mental_heatlh_screen/home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                CustomContainerWidget(
                  ontap: () {
                    Get.to(() => const NewsScreen());
                  },
                  image: 'assets/Rectangle 13121.png',
                  title: 'What’s News',
                ),
                CustomContainerWidget(
                  ontap: () {
                    Get.to(() => const MentalHealthHomeScreen());
                  },
                  image: 'assets/Rectangle 1312.png',
                  title: 'Alcohol and Drug\nSupport Facilities',
                ),
                CustomContainerWidget(
                  ontap: () {
                    Get.to(() => const SupportServicesAllButtonScreen());
                  },
                  image: 'assets/Rectangle 1311.png',
                  title: 'Support Services',
                ),
                CustomContainerWidget(
                  ontap: () {
                    Get.to(() => const DrugsFactsServices());
                  },
                  image: 'assets/Rectangle 1310.png',
                  title: 'Drug Facts',
                ),
                SizedBox(
                  height: 9.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomContainerWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback ontap;
  const CustomContainerWidget(
      {super.key,
      required this.ontap,
      required this.image,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: Stack(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(
                height: 30.px,
              ),
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Playfair',
                    fontSize: 18.px,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15.px,
              ),
              GestureDetector(
                onTap: ontap,
                child: Container(
                  height: 25,
                  width: 120,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff4E95D9),
                  ),
                  child: Center(
                    child: Text(
                      'Learn More',
                      style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 12.px,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
