import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lean_on_me1/view/news_services.dart';
import 'package:lean_on_me1/view/support_services/path2help.dart';

import '../whats_news_screen/path2help.dart';
import 'ai_anon.dart';
import 'break_throug.dart';
import 'family_drug_gambling.dart';
import 'family_drug_support.dart';
import 'headspace.dart';

class SupportServicesAllButtonScreen extends StatelessWidget {
  const SupportServicesAllButtonScreen({super.key});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                title: 'AL-ANON',
                ontap: () {
                  Get.to(() => AiAnon());
                }),
            SizedBox(height: 30),
            CustomButton(
                title: 'BREAKTHROUGH FOR FAMILIES',
                ontap: () {
                  Get.to(() => BreakThrough());
                }),
            SizedBox(height: 30),
            CustomButton(
                title: 'HEADSPACE',
                ontap: () {
                  Get.to(() => HeadSpace());
                }),
            SizedBox(height: 30),
            CustomButton(
                title: 'FAMILY DRUG SUPPORT',
                ontap: () {
                  Get.to(() => FamilyDrugSupport());
                }),
            SizedBox(height: 30),
            CustomButton(
                title: 'FAMILY DRUG AND GAMBLING HELP',
                ontap: () {
                  Get.to(() => FamilyDrugGambling());
                }),
            SizedBox(height: 30),
            CustomButton(
                title: 'Path2Help',
                ontap: () {
                  Get.to(() => Path2Help());
                }),
          ],
        ),
      ),
    );
  }
}
