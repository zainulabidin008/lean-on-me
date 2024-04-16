import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ReleaseMySuper extends StatelessWidget {
  ReleaseMySuper({super.key});
  final Uri url1 = Uri.parse('www.releasemysuper.com.au');
  Future<void> launchUrlRelease() async {
    if (!await launchUrl(url1)) {
      throw Exception('Could not launch $url1');
    }
  }

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
                    'assets/pdfs_images/Picture2.png',
                    height: 60,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''Release My Super assists clients to obtain access to their superannuation savings on compassionate release of super grounds for addiction, mental health and IVF treatment. All three of these applications requires specialist evidence that treatment is necessary because of “acute or chronic mental illness”.Release My Super specialises in the release of super under mental health provisions and understands the process and the nature of an application to pay for treatment from your superannuation savings to access the treatment of mental health services you may not have been able to afford. Our health should not be dependent on the depth of our pockets; therefore the ruling around the Compassionate Release of Super Program is welcomed by all Australians. ''',
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
                      launchUrlRelease();
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      'www.releasemysuper.com.au',
                      style: TextStyle(
                          fontFamily: 'Playfair',
                          fontSize: 18.px,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff050505)),
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
