import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class Path2Help extends StatelessWidget {
  const Path2Help({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri url1 = Uri.parse('https://www.adf.org.au/help-support/path2help');
    Future<void> launchUrlPath2Help() async {
      if (!await launchUrl(url1)) {
        throw Exception('Could not launch $url1');
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
                    'assets/pdfs_images/Picture3.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''The Path2Help portal has been developed by the Alcohol and Drug Foundation for family and friends of people who use alcohol and other drugs. It helps Australians sift through thousands of specialist services to find what’s right for them.
        
Path2Help helps you get support early, as soon as you identify a problem. The portal asks up to 11 questions and provides local, low or no-cost support services based on your answers – you don’t need to know what you’re looking for, Path2Help’s intuitive search function does it all for you.
                  ''',
                    style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 14.px,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 30.px,
                  ),
                  GestureDetector(
                    onTap: () {
                      launchUrlPath2Help();
                    },
                    child: Container(
                      // height: 45.px,
                      width: 200.px,
                      color: Color(0xff4E95D9),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Access Path2Help',
                            style: TextStyle(
                                fontFamily: 'Playfair',
                                fontSize: 10.px,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
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
