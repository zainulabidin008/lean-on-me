import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lean_on_me1/view/mental_heatlh_screen/the_header_clinic.dart';
import 'package:lean_on_me1/view/mental_heatlh_screen/wyndham_clinic.dart';
import 'package:lean_on_me1/view/news_services.dart';

import 'arrow_health.dart';
import 'byron_private.dart';
import 'health_scope_hospitals.dart';
import 'my_hab.dart';

class AllButtonScreen extends StatelessWidget {
  const AllButtonScreen({super.key});

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
                title: 'BYRON PRIVATE',
                ontap: () {
                  Get.to(() => BryonPrivateScreen());
                }),
            SizedBox(height: 30),
            CustomButton(
                title: 'HEALTHSCOPE HOSPITALS',
                ontap: () {
                  Get.to(() => HealthScopeHospital());
                }),
            SizedBox(height: 30),
            CustomButton(
                title: 'MYHAB',
                ontap: () {
                  Get.to(() => MyHabScreen());
                }),
            SizedBox(height: 30),
            CustomButton(
                title: 'HADER CLINIC',
                ontap: () {
                  Get.to(() => TheHeaderCleanic());
                }),
            SizedBox(height: 30),
            CustomButton(
                title: 'ARROW HEALTH',
                ontap: () {
                  Get.to(() => ArrowHealth());
                }),
            SizedBox(height: 30),
            CustomButton(
                title: 'WYNDHAM CLINIC',
                ontap: () {
                  Get.to(() => WyndhamClinic());
                }),
          ],
        ),
      ),
    );
  }
}
