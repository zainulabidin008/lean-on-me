import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lean_on_me1/view/mental_heatlh_screen/private_public.dart';
import 'package:lean_on_me1/view/news_services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MentalHealthHomeScreen extends StatelessWidget {
  const MentalHealthHomeScreen({super.key});

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
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Text(
                //       textAlign: TextAlign.left,
                //       'Introduction:',
                //       style: TextStyle(
                //           fontFamily: 'Playfair',
                //           fontSize: 14.px,
                //           fontWeight: FontWeight.w600,
                //           color: const Color(0xff444444)),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 1.h,
                ),
                RichText(
                  text: TextSpan(
                    text:
                        '''Choosing a rehab facility to help combat an alcohol, drug or gambling addiction is one of the most important choices you will ever make!
                        
Finding recovery is important, which is why it’s just as important to ensure you choose the right ''',
                    style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 14.px,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'rehab',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      TextSpan(
                          text:
                              '. The right rehab will make it much more likely that you complete the program successfully, leave the program in recovery, and maintain your recovery '),
                      TextSpan(
                        text: 'after returning home',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      TextSpan(
                          text:
                              ''' however, the sheer number of options available means that making a choice can be hard, which means that developing a personalized plan is the first, and most important, step.
                              
Every treatment program has different specialties and focuses that they cater to. Many of these treatment centres will measure success differently and utilize different strategies to help you get there.  After identifying all possible treatment program options, the next step is to compare programs. Choosing the right rehab means carefully weighing all the factors to ensure your goals are being met. Making a decision will require determining what characteristics are most important and finding the program that most closely matches your treatment.
        
It’s important to note that you may not be able to find a facility that perfectly matches all of your preferences, however, with the right research and support you’ll still be able to find an excellent treatment centre that will help you get started on the road to recovery'''),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.px,
                ),
                CustomButton(
                    title: 'ENTER',
                    ontap: () {
                      Get.to(() => PubicAndPrivate());
                    }),
                SizedBox(
                  height: 30.px,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
