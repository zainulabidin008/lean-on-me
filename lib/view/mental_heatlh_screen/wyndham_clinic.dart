import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WyndhamClinic extends StatelessWidget {
  const WyndhamClinic({super.key});

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
                    'assets/pdfs_images/Picture9.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''The Wyndham Clinic Private Hospital, a state of the art facility servicing Melbourne’s West and beyond is located just 15 minutes from the Westgate Bridge and offer a range of patient services in mental health, including a 50-bed inpatient mental health facility with a general adult mental health unit, specialised youth/adolescent service and drug and alcohol service.
        
All of the inpatient rooms are private with an en-suite and include televisions and free wi-fi, with a dedicated chef on site to prepare meals accommodating all special dietary requirements.
        
The Wyndham Clinic team are focussed on helping each patient get back to a life of fulfilment and have a multi-disciplinary team that will provide patients with the skills and support to enhance their wellbeing.
        
As part of their service, they provide a consumer and carer consultant. They represent the lived experience of mental illness. We also have peer support groups run on the wards and also offer one on ones, to give our clients a different perspective of living with mental illness
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
                      Text(' Werribee, VIC', textAlign: TextAlign.center),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Contact: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('03 9731 6646', textAlign: TextAlign.center),
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
                        'www.wyndhamclinic.com.au',
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
