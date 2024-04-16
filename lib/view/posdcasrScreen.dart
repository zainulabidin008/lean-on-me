import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class PodCastScreen extends StatelessWidget {
  const PodCastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://www.podpage.com/lean-on-me/');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    return Scaffold(
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
                    'assets/splash.png',
                    height: 250.px,
                    width: 250.px,
                  ),
                  SizedBox(
                    height: 10.px,
                  ),
                  Text(
                    '''The Lean on Me podcast series has been created to provide support to the family & friends who are supporting loved ones suffering an alcohol, drug or gambling addiction or a related mental illness.
                    
As your host and someone who has over 20 years of ‘lived experience’ with cocaine addiction, multiple rehab visits, couch surfing and reaching absolute rock bottom, I was fortunate enough to survive those very dark days all thanks to some unique and special human beings: my family and friends, or as we also call them, your tribe.

I’ve created this podcast series because I came to realise that my family and friends really had no understanding or education around an addicts’ mindset and especially the mindset around survival when they are in an addictive state of mind – they also had no education and information to support them in how to deal with me and the situation I was in and they didn’t know where to look or what to do for help.

So, I’ve made it my purpose to provide a platform where you can hear from family members sharing their own real-life stories and experiences, Mental Health professionals providing guidance and education and other addicts who made it through the other side who share their stories.
''',
                    style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 14.px,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 30.px,
                  ),
                  InkWell(
                    onTap: () {
                      _launchUrl();
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 12.h),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo),
                          color: Colors.green),
                      child: const Text(
                        textAlign: TextAlign.center,
                        'Listen to the Lean on Me Podcast Series',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.px,
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
