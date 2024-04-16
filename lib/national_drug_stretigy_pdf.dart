import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class NationalDrugStratigyScreen extends StatelessWidget {
  const NationalDrugStratigyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://www.podpage.com/lean-on-me/');
    // Future<void> _launchUrl() async {
    //   if (!await launchUrl(_url)) {
    //     throw Exception('Could not launch $_url');
    //   }
    // }
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
      resizeToAvoidBottomInset: true,
      body: Column(children: [
        SizedBox(
          height: 80.h, // Set the desired height
          width: width, // Set the desired width
          child: PDF(
            enableSwipe: true,
            swipeHorizontal: false,
            autoSpacing: false,
            pageFling: false,
            onError: (error) {
              print(error.toString());
            },
            onPageError: (page, error) {
              print('$page: ${error.toString()}');
            },
          ).fromAsset(
              'assets/pdfs/National-Drug-Strategy-Household-Survey-2022-2023.pdf'),
        ),
        // SizedBox(
        //   height: 3.h,
        // ),
        // InkWell(
        //   onTap: () {
        //     // _launchUrl();
        //   },
        //   child: Container(
        //     alignment: Alignment.center,
        //     margin: EdgeInsets.symmetric(horizontal: 14.h),
        //     height: 4.h,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(20.px),
        //         color: Colors.green),
        //     child: const Text(
        //       'More information',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: 9.h,
        // )
      ]),
    );
  }
}
