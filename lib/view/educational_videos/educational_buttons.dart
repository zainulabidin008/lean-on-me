import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class EducationalButtonScreen extends StatelessWidget {
  const EducationalButtonScreen({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                launchUrl1();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.h),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo),
                  color: Color(0xff4E95D9),
                ),
                child: Text(
                  "How does rehab treatment for youth differ from rehab treatment for adults?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.px,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            InkWell(
              onTap: () {
                launchUrl2();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.h),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo),
                  color: Color(0xff4E95D9),
                ),
                child: Text(
                  "What is the most effective treatment plan to support long-term recovery?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.px,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // SizedBox(
            //   height: 9.h,
            // )
          ],
        ),
      ),
    );
  }
}
