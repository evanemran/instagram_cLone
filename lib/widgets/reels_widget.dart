import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'content_screen.dart';

class ReelsWidget extends StatefulWidget {
  const ReelsWidget({Key? key}) : super(key: key);

  @override
  State<ReelsWidget> createState() => _ReelsWidgetState();
}

class _ReelsWidgetState extends State<ReelsWidget> {

  final List<String> videos = [
    'https://assets.mixkit.co/videos/preview/mixkit-two-avenues-with-many-cars-traveling-at-night-34562-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-hands-holding-a-smart-watch-with-the-stopwatch-running-32808-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-woman-in-a-floral-shirt-dancing-1228-large.mp4'
  ];

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return SafeArea(child: Container(
      child: Stack(
        children: [
          Swiper(
            itemBuilder: (context, index) {
              return ContentScreen(
                src: videos[index],
              );
            }, itemCount: videos.length, scrollDirection: Axis.vertical,
          ),
          Padding(padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Reels",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),),
                Icon(Icons.camera_alt, color: Colors.white,)
              ],
            ),)
        ],
      ),
    ));
  }
}
