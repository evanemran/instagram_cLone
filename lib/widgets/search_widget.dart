import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../utils/app_colors.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {

  List<String> sImages = [
    'https://im.rediff.com/movies/2019/apr/25avenger4.jpg?w=670&h=900',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBHdWbvqIPoYhzG1IFRkkO3bmrhUwCTsINw&usqp=CAU',
    'https://m.media-amazon.com/images/M/MV5BMjQ2NTQ3MDI3Nl5BMl5BanBnXkFtZTgwMzg4MjkzNTM@._V1_.jpg',
    'https://s3.r29static.com/bin/entry/8a8/720x864,85/2169999/image.webp',
    'https://cdn.mos.cms.futurecdn.net/cxa94VWJG5Fm2jXYCBVSd5-1200-80.jpg',
    'https://www.superherohype.com/wp-content/uploads/sites/4/2014/03/witch-shh.jpg',
    'https://img.mensxp.com/media/content/2022/Jan/Tom-Cruise-As-Iron-Man-All-But-Confirmed-In-Dr-Strange-Leaked-Pic-1200x900_61ebab80a7b77.jpeg',
    'https://staticc.sportskeeda.com/editor/2023/02/03cb8-16774979434724-1920.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: Colors.white,
      //     statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      //     statusBarBrightness: Brightness.light, // For iOS (dark icons)
      //   ),
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: const Text("Instagram", style: TextStyle(color: Colors.black, fontFamily: "Instagram", fontSize: 34),),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Image.asset("assets/images/heart.png", width: 24, height: 24,)),
      //     IconButton(onPressed: () {}, icon: Image.asset("assets/images/messenger.png", width: 24, height: 24,)),
      //   ],
      // ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.fromLTRB(8,40,8,8),
            decoration: const BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: Row(
              children: const [
                Icon(Icons.search,),
                SizedBox(width: 8,),
                Expanded(child: TextField(
                  decoration: InputDecoration.collapsed(hintText: "Search"),
                ))
              ],
            ),

          ),
          // const SizedBox(height: 8,),
          Expanded(child: GridView.custom(
            padding: EdgeInsets.zero,
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 4,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: const [
                QuiltedGridTile(2, 2),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 2),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) => Image.network(sImages[Random().nextInt(sImages.length)], fit: BoxFit.cover,),
            ),
          ))
        ],
      ),
    );
  }
}
