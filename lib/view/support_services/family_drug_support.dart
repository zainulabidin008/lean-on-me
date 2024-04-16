import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FamilyDrugSupport extends StatelessWidget {
  const FamilyDrugSupport({super.key});

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
                    'assets/pdfs_images/Picture14.png',
                    height: 120,
                    width: 180,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''“To assist families throughout Australia to deal with alcohol and other drugs issues in a way that strengthens relationships and achieves positive outcomes”.
                    
To provide support to families and friends of alcohol and other drug users in the most appropriate way to meet their needs.

To assist families to deal with alcohol and drug issues in a way that strengthens relationships and achieves positive outcomes.

To provide a safe, nurturing and confidential environment for clients to address alcohol and other drug issues.

''',
                    style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 14.px,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    'www.fds.org.au',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
