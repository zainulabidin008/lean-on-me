import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean_on_me1/view/telehealth/telehealth_buttons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';

class TeleHealthScreen extends StatelessWidget {
  const TeleHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse('https://psych2u.com.au/');
    Future<void> _launchUrl() async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Text(
              //   'Introduction:',
              //   style: TextStyle(
              //       fontFamily: 'Playfair',
              //       fontSize: 14.px,
              //       fontWeight: FontWeight.w600,
              //       color: const Color(0xff444444)),
              // ),
              SizedBox(height: 2.h),
              Text(
                '''Telehealth is all about having a consultation with a healthcare provider by phone or video call.

Many GPs, specialists, and other healthcare providers now offer a telehealth consultation when a physical examination isn’t necessary. It’s not intended to replace essential visits to the doctor, but rather be a convenient solution when you can’t see a doctor face to face.

Telehealth has been transformational to Australia’s universal healthcare program, Medicare. It has played a critical role in ensuring the continuity of care for hundreds of thousands of Australian patients. 

Telehealth allows you to get the health care you need, where and when you need it.
''',
                style: TextStyle(
                    fontFamily: 'Playfair',
                    fontSize: 14.px,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => TeleHealthButton());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.h),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo),
                      color: Colors.green),
                  child: Text(
                    "Access a GP or a Psychologist/Psychiatrist to discuss the Mental Health support, you may need.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.px,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 9.h,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
