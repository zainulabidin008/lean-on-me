import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HealthScopeHospital extends StatelessWidget {
  const HealthScopeHospital({super.key});

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
                    'assets/pdfs_images/Picture5.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''With a national network of 11 private hospitals and over 600 inpatient beds, Healthscope provides Australia’s most extensive range of mental health programs and services. They strive to achieve truly exceptional outcomes for our patients whether that be as inpatients, outpatients or through our comprehensive day programs – many of which are exclusive to Healthscope.
        
With treatments and expertise extending across the breadth of mental health conditions including mood, anxiety and eating disorders, addictive behaviours and PTSD, we’re on a mission to advance and elevate mental healthcare in Australia.

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
                      Text('NSW, VIC, QLD & NT', textAlign: TextAlign.center),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text(
                      //   'Website:',
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // ),
                      Expanded(
                        child: Text(
                          'www.healthscopehospitals.com.au/services',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow
                              .ellipsis, // Add overflow property if necessary
                          maxLines: 1, // Add maxLines property if necessary
                        ),
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
