import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class DrugsFactsServices extends StatelessWidget {
  const DrugsFactsServices({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://adf.org.au/drug-facts/');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Text(
              '''Discussing and understanding alcohol and drugs with family members and friends is an opportunity to learn more about the different types of drugs and their individual and social impact.
                
It’s an opportunity to talk through potential risks, and ways to minimise harm from drugs and it can also establish attitudes and boundaries regarding drug use.

The more educated you are around the drug of choice that your loved one may be using, and understanding what the drug is, how it is used and its effects, will help support you in the journey ahead.
''',
              style: TextStyle(
                  fontFamily: 'Playfair',
                  fontSize: 14.px,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {
                _launchUrl();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: .5.h),
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo),
                  color: Color(0xff4E95D9),
                ),
                child: const Text(
                  'Find Out More',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
