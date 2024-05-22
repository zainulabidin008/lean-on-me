import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../national_drug_stretigy_pdf.dart';

class NationalDrugStratigy extends StatelessWidget {
  const NationalDrugStratigy({super.key});

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
                    'assets/pdfs_images/Picture1.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''Drug and alcohol use affects individuals, families and the community. 
        
Every 3 years, people in Australia are asked about their use and opinions of licit and illicit drugs, including alcohol, tobacco, cannabis, e-cigarettes and vapes. 
        
More than 21,000 people across the country took part in the latest National Drug Strategy Household Survey, held in 2022 and 2023. This report presents findings from the survey and looks at what has changed over the past 20 years. 
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
                      Get.to(() => NationalDrugStratigyScreen());
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
                            'Click to view the National Drug Strategy Household Survey 2022-2023 Report',
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
