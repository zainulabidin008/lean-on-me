import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class Psych2uScreen extends StatelessWidget {
  const Psych2uScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://www.psych2u.com.au/');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

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
                    'assets/pdfs_images/Picture199.jpg',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''Delivering affordable, quality, and timely mental healthcare.
                    
Psych2U take pride in being Australia’s longest-running mental health provider, dedicated to delivering exceptional care to the community.

What sets them apart is their unique approach – offering both psychologists and psychiatrists, a rarity in the virtual mental healthcare landscape.

The Psych2U experienced team, consisting of 35 psychologists and 21 psychiatrists, are committed to providing the highest levels of care.

Notably, they conduct an average of 24,000 consultations per year showcasing their commitment to creating a meaningful impact to closing the gap in providing timely access to mental healthcare.
''',
                    style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 14.px,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      _launchUrl();
                    },
                    child: Container(
                      width: 170.px,
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.h),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo),
                          color: Colors.green),
                      child: Text(
                        "Enter the PSYCH2U site",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.px,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
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
