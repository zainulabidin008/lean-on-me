import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyHabScreen extends StatelessWidget {
  const MyHabScreen({super.key});

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
                    'assets/pdfs_images/Picture6.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''MyHab’s approach to rehabilitation has revolutionised the practice of mental health and addiction treatment; the Myhab success combines leading research, decades of experience and dedication to your recovery. MyHab’s approach to treatment utilises cutting edge, evidence-based practices adopted from the Minnesota Model of care.
                    
MyHab’s treatment model revolves around internationally recognised evidence. It proves addiction is a disease and abstinence is the best way to manage the condition and approach mental health treatment in a holistic way, working with mind, body and spirit, bringing them together as components of a healthy life.
        
All MyHab staff are PTSD, trauma, and addiction recovery professionals with decades of experience, working within addiction treatment and mental health services across Australia. Some have also overcome addiction in their personal lives – now dedicating themselves to helping others.
''',
                    style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 14.px,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Location:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(' Glen Waverley, VIC', textAlign: TextAlign.center),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Contact: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('1300 190 370', textAlign: TextAlign.center),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text(
                      //   'Website: ',
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // ),
                      Text(
                        'www.myhab.com.au',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow
                            .ellipsis, // Add overflow property if necessary
                        maxLines: 1, // Add maxLines property if necessary
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.px,
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
