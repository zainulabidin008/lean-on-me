import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lean_on_me1/view/news_services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'all_buttons_screen.dart';

class PubicAndPrivate extends StatelessWidget {
  const PubicAndPrivate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: 18,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              title: 'PUBLIC',
              ontap: () {},
            ),
            SizedBox(
              height: 30.px,
            ),
            CustomButton(
              title: 'PRIVATE',
              ontap: () {
                Get.to(() => const AllButtonScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
