import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BryonPrivateScreen extends StatelessWidget {
  const BryonPrivateScreen({super.key});

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
                    'assets/pdfs_images/Picture4.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''Set in the hinterland of Byron Bay, Byron Private is an integrative holistic residential treatment facility providing specialised therapeutic support for individuals suffering from depression, anxiety, drug and alcohol addiction, trauma and relationship issues.
        
Offering a clinically sound alternative to a holistic approach to treatment, Byron Private offers the ideal alternative to the standard clinical atmosphere, and facilities with often larger groups of people undergoing treatment.
        
Byron Private take a caring approach, and only have a maximum of 12 clients at any one time. There is support for you 24 hrs a day, 7 days a week with a team of dedicated psychologists, therapists, peer support workers and program coordinators to ensure your experience is like no other. 
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
                      Text(' Myocum, NSW', textAlign: TextAlign.center),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Contact: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('02 6684 4145', textAlign: TextAlign.center),
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
                        'www.byronprivaterehab.com.au',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow
                            .ellipsis, // Add overflow property if necessary
                        maxLines: 1, // Add maxLines property if necessary
                      ),
                    ],
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
