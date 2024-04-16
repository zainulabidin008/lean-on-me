import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean_on_me1/view/posdcasrScreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../view/homeScreen.dart';
import '../view/telehealth_services.dart';
import '../view/videosScreen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://flutter.dev');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    RxInt isSelectedIndex = 0.obs;
    return Scaffold(
        body: Obx(
      () => Stack(
        children: [
          isSelectedIndex.value == 0
              ? const HomeScreen()
              : isSelectedIndex.value == 1
                  ? const EducationalVideosScreen()
                  : isSelectedIndex.value == 2
                      ? const PodCastScreen()
                      : const TeleHealthScreen(),
          // isSelectedIndex.value==2? const VideosScreen() : const VideosScreen(),

          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 10.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.px),
                      topRight: Radius.circular(10.px)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: const Offset(0, 2),
                        spreadRadius: 2,
                        blurRadius: 2)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      isSelectedIndex.value = 0;
                    },
                    child: SizedBox(
                      width: 11.5.h, // Adjust the width as needed
                      height: 16.h, // Adjust the height as needed
                      child: Image(
                          image: isSelectedIndex.value == 0
                              ? const AssetImage('assets/selected4.png')
                              : const AssetImage('assets/unselected1.png')),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      isSelectedIndex.value = 1;
                    },
                    child: SizedBox(
                      width: 11.5.h, // Adjust the width as needed
                      height: 16.h, // Adjust the height as needed
                      child: Image(
                        image: isSelectedIndex.value == 1
                            ? const AssetImage('assets/selected1.png')
                            : const AssetImage('assets/unselected2.png'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      isSelectedIndex.value = 2;

                      // isSelectedIndex.value=2;
                    },
                    child: SizedBox(
                      width: 11.5.h, // Adjust the width as needed
                      height: 16.h, // Adjust the height as needed
                      child: Image(
                        image: isSelectedIndex.value == 2
                            ? const AssetImage('assets/selected2.png')
                            : const AssetImage('assets/unselected3.png'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      isSelectedIndex.value = 3;
                      // isSelectedIndex.value=3;
                    },
                    child: SizedBox(
                      width: 11.5.h, // Adjust the width as needed
                      height: 16.h, // Adjust the height as needed
                      child: Image(
                          image: isSelectedIndex.value == 3
                              ? const AssetImage('assets/selected3.png')
                              : const AssetImage('assets/unselected4.png')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
