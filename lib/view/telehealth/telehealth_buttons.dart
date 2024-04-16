import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lean_on_me1/view/telehealth/psych2u_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'gp2u_screen.dart';

class TeleHealthButton extends StatelessWidget {
  const TeleHealthButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri url1 = Uri.parse('https://www.youtube.com/watch?v=JbTUZGAsY9Q');
    Future<void> launchUrl1() async {
      if (!await launchUrl(url1)) {
        throw Exception('Could not launch $url1');
      }
    }

    final Uri url2 = Uri.parse('https://www.youtube.com/watch?v=HA8Te-lxyaE');
    Future<void> launchUrl2() async {
      if (!await launchUrl(url2)) {
        throw Exception('Could not launch $url2');
      }
    }

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => Gp2uScreen());
                },
                child: Container(
                  height: 80.px,
                  width: 260,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.4.px),
                  ),
                  child: Image.asset('assets/pdfs_images/Picture18.png'),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => Psych2uScreen());
                },
                child: Container(
                  height: 80.px,
                  width: 260,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.4.px),
                  ),
                  child: Image.asset('assets/pdfs_images/Picture19.jpg'),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              InkWell(
                onTap: () {
                  // _launchUrl();
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo),
                      color: Colors.green),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Click on above option to access site',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
