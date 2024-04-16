import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BreakThrough extends StatelessWidget {
  const BreakThrough({super.key});

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
                    'assets/pdfs_images/Picture11.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''Misinformation in the media and public discourse about drug use and addiction creates stigma and shame for people who use drugs and their families, making it more difficult to seek help.
                    
BreakThrough is a program for family, friends and partners of people with addictive behaviours and offers practical strategies about how to talk to loved ones about their substance use, better respond to and manage challenging behaviours, and make self-care a priority.

Developed by Turning Point, Self Help Addiction Resource Centre (SHARC) and the Bouverie Centre, BreakThrough is funded by the Victorian Department of Health.

''',
                    style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 14.px,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  // Text(
                  //   'www.breakthroughforfamilies.com',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'www.breakthroughforfamilies.com',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
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
