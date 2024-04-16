import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

class VideoDetailScreen extends StatefulWidget {
  final String? title;
  final String? url;
  final String? description;
  final String? time;
  const VideoDetailScreen(
      {super.key, this.title, this.url, this.description, this.time});

  @override
  State<VideoDetailScreen> createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
  late VideoPlayerController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.asset("${widget.url}")
      ..initialize().then((_) {
        setState(() {});
      });
    controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 14,
                  )),
              Text(
                '${widget.title}',
                style: TextStyle(
                    fontFamily: 'Playfair',
                    fontSize: 16.px,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff222222)),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 1.4.h,
                ),
                Stack(children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 1.h),
                      height: 34.8.h,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30.px),
                      ),
                      child: controller.value.isInitialized
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(30.px),
                              child: AspectRatio(
                                aspectRatio: controller.value.aspectRatio,
                                child: VideoPlayer(
                                  controller,
                                ),
                              ),
                            )
                          : const SizedBox.shrink()),
                  Positioned(
                    bottom: 7.6.h,
                    top: 7.6.h,
                    left: 20.h,
                    right: 20.h,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.value.isPlaying
                              ? controller.pause()
                              : controller.play();
                        });
                      },
                      child: controller.value.isPlaying
                          ? controller.value.isCompleted
                              ? Image.asset(
                                  'assets/play.png',
                                  scale: .8.h,
                                )
                              : Image.asset(
                                  'assets/pause.png',
                                  scale: .8.h,
                                )
                          : Image.asset(
                              'assets/play.png',
                              scale: .8.h,
                            ),
                    ),
                  ),
                ]),
                SizedBox(
                  width: 1.4.h,
                ),
                Text(
                  '${widget.time}',
                  style: TextStyle(
                      fontFamily: 'Playfair',
                      fontSize: 12.px,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff5A5A5A)),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 1.9.h,
                ),
                Text(
                  'Description:',
                  style: TextStyle(
                      fontFamily: 'Playfair',
                      fontSize: 14.px,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff444444)),
                ),
                Text(
                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet ornare leo. Etiam hendrerit neque mauris. Curabitur elit ante, tempus vel mollis eu, pellentesque vitae felis.''',
                  style: TextStyle(
                      fontFamily: 'Playfair',
                      fontSize: 12.px,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffA6A6A6)),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
