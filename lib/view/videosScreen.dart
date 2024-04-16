import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'educational_videos/educational_buttons.dart';

class EducationalVideosScreen extends StatelessWidget {
  const EducationalVideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Text(
                  //   'Educational Videos',
                  //   style: TextStyle(
                  //       fontFamily: 'Playfair',
                  //       fontSize: 18.px,
                  //       fontWeight: FontWeight.bold,
                  //       color: const Color(0xff050505)),
                  // ),
                  CircleAvatar(
                    radius: 3.h,
                    backgroundImage: const AssetImage('assets/profile.png'),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              // Text(
              //   'Introduction:',
              //   style: TextStyle(
              //       fontFamily: 'Playfair',
              //       fontSize: 14.px,
              //       fontWeight: FontWeight.w600,
              //       color: const Color(0xff444444)),
              // ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                '''The Educational Videos library has been compiled and put together with content by qualified Mental Health professionals and is designed to help provide you with support and insight into the many questions you may have whilst supporting a family member, friend or loved one during their alcohol, drug or gambling addiction.
                
This library of content is all about supporting you!
''',
                style: TextStyle(
                  fontFamily: 'Playfair',
                  fontSize: 12.px,
                  fontWeight: FontWeight.w400,
                  // color: const Color(0xffA6A6A6),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => EducationalButtonScreen());
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.h),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.px),
                      color: Colors.green),
                  child: Text(
                    "Click to access the Educational Videos Library",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.px,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
