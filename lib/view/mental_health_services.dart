import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';
class MentalHealthServices extends StatelessWidget {
  const MentalHealthServices({super.key});


  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse('https://www.rayhaderclinic.com.au/');
    Future<void> _launchUrl() async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body:Column(
        children: [
          SizedBox(height: 3.h,),

          Row(
            children: [
              Align(alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                    Get.back();
                  }, icon: const Icon(Icons.arrow_back_ios_rounded,color: Colors.black,
                    size: 18,))),

            ],
          ),
          Column(
            children: [

              SizedBox( height: 75.h, // Set the desired height
                width: width,  // Set the desired width
                child: SfPdfViewer.asset(
                    'assets/pdfs/mentalhealth.pdf')
              ),
              SizedBox(height: 1.h,),
              InkWell(
                onTap: () {
                  _launchUrl();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: .5.h),
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo),
                      color: Colors.green),
                  child: const Text(
                    'Find Out More',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        ],
      ),

    );
  }
}