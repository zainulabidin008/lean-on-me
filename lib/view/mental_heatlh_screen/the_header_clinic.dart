import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TheHeaderCleanic extends StatelessWidget {
  const TheHeaderCleanic({super.key});

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
                    'assets/pdfs_images/Picture7.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''The Hader Clinic was founded in 1998 to offer support to patients suffering through the Victorian heroin epidemic. This early dive into the throes of addiction allowed the facility to quickly and effectively formulate holistic treatment models that would form the basis of their leading approach to addiction treatment today.
                    
More than 20 years on, The Hader Clinic has become one of the most trusted addiction treatment facilities in Australia.
        
At The Hader Clinic, we know exactly what you are going through. We have a comprehensive understanding of all facets of addiction, from the physical, to the spiritual. We treat our patients by building rapport with them and their families, helping them find a new way of life with empathy, understanding, and compassion.
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
                      Text(' Essendon & Geelong, VIC',
                          textAlign: TextAlign.center),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Contact: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('1800 957 462', textAlign: TextAlign.center),
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
                        'www.rayhaderclinic.com.au',
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
