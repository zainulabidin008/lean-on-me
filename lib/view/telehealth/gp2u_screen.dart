import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class Gp2uScreen extends StatelessWidget {
  const Gp2uScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://www.gp2u.com.au/');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/pdfs_images/Picture18.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''Founded in Australia in 2011, GP2U is Australia's only dedicated online medical practice. Their goal is to deliver healthcare to patients on their terms, by allowing consultations to occur where and when it suits them.

The GP2U proprietary software facilitates secure video-based consultations and is deeply integrated into the Australian healthcare system allowing them to deliver prescriptions, pathology requests, specialist referrals' and secure provider to provider messaging.

While GP2U maintain offices in Hobart and Melbourne, GP2U is a truly virtual practice with medical practitioners delivering care from anywhere in Australia to patients in metro, regional, remote and foreign locations.

''',
                    style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 14.px,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      _launchUrl();
                    },
                    child: Container(
                      width: 150.px,
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.h),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo),
                          color: Colors.green),
                      child: Text(
                        "Enter the GP2U site",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.px,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
