import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArrowHealth extends StatelessWidget {
  const ArrowHealth({super.key});

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
                    'assets/pdfs_images/Picture8.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''Arrow Health is a family-owned rehabilitation facility that was created to offer those suffering from addiction and their families empathetic and effective help.
                    
Their programs are informed by international best-practise and based on the Minnesota Model and Therapeutic Community Model and provide the best possible therapeutic care for patients that’s based on experience and expertise. This brings peace of mind to families and friends that their loved one is in good hands.
        
Arrow Health’s holistic approach treats clients physically with the detox process (medicated if required) followed by abstinence and informs the psychological and mental health treatment of clients and their families’ through a mix of proven therapeutic approaches.
        
Arrow Health aims to provide hope and find solutions for those affected by this misunderstood disease and importantly support those whose loved ones are struggling regardless of whether or not the loved one is in their care. 
        
Arrow Health has grown and evolved over the last six years and now includes an accredited private hospital
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
                      Text(' Woodend, VIC', textAlign: TextAlign.center),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Contact: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('03 9533 7888', textAlign: TextAlign.center),
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
                        'www.arrowhealth.com.au',
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
