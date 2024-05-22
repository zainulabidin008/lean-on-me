import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean_on_me1/view/whats_news_screen/national_drug_startegy.dart';
import 'package:lean_on_me1/view/whats_news_screen/path2help.dart';
import 'package:lean_on_me1/view/whats_news_screen/release_my_super.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://adf.org.au/help-support/path2help/');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CustomButton(
                title: 'National Drug Strategy Household Survey 2022-2023',
                ontap: () {
                  Get.to(() => NationalDrugStratigy());
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CustomButton(
                title:
                    'Release My Super (Compassionate release of Superannuation)',
                ontap: () {
                  Get.to(() => ReleaseMySuper());
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CustomButton(
                title: 'Path2Help',
                ontap: () {
                  Get.to(() => Path2Help());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback ontap;
  final String title;
  const CustomButton({super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        // height: 45.px,
        width: 200.px,
        color: Color(0xff4E95D9),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              title,
              style: TextStyle(
                  fontFamily: 'Playfair',
                  fontSize: 10.px,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

// Column(
// children: [
// SizedBox(height: 3.h,),
// Row(
// children: [
// Align(alignment: Alignment.topLeft,
// child: IconButton(onPressed: (){
// Get.back();
// }, icon: const Icon(Icons.arrow_back_ios_rounded,color: Colors.black,
// size: 18,))),
//
// ],
// ),
// Column(
// children:[
// SizedBox(
// height: 75.h,  // Set the desired height
// width: width, // Set the desired width
// child:SfPdfViewer.asset(initialZoomLevel: 0,
// "assets/pdfs/Content_What's News.pdf"),
// ),
// SizedBox(height: 1.h,),
// InkWell(
// onTap: () {
// _launchUrl();
// },
// child: Container(
// padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: .5.h),
// alignment: Alignment.center,
// margin: EdgeInsets.symmetric(horizontal: 12.h),
// decoration: BoxDecoration(
// border: Border.all(color: Colors.indigo),
// color: Colors.green),
// child: const Text(
// 'Find Out More',
// style: TextStyle(color: Colors.white),
// ),
// ),
// ),
//
// SizedBox(
// height: 3.h,
// ),
// ]
// ),
// ],
// ),
