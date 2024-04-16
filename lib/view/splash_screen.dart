import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/bottomBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) =>
    Get.offAll(()=>const BottomNavBar()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xff06A54B),

      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height-6.h,
          width: MediaQuery.of(context).size.width-6.h,
          child: Image.asset(
            'assets/splash.png',

          ),
        ),
      ),
    );
  }
}
