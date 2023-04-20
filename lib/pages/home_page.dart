import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/reels_widget.dart';

import '../widgets/home_widget.dart';
import '../widgets/picker_widget.dart';
import '../widgets/profile_widget.dart';
import '../widgets/search_widget.dart';
import '../widgets/shop_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  String homeIcon = "assets/images/home.png";
  String searchIcon = "assets/images/search.png";
  String postIcon = "assets/images/more.png";
  String shopIcon = "assets/images/video.png";

  List<Widget> homeMenuList = const [
    HomeWidget(),
    SearchWidget(),
    PickerWidget(),
    ReelsWidget(),
    ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeMenuList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(homeIcon), color: Colors.black,), label: ""),
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/search.png"), color: Colors.black,), label: ""),
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/more.png"), color: Colors.black,), label: ""),
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/video.png"), color: Colors.black,), label: ""),
          BottomNavigationBarItem(icon: CircleAvatar(radius: 16, backgroundColor: Colors.black, child: ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Image.asset("assets/images/stark.jpg", width: 28, height: 28, fit: BoxFit.cover,),
          ),), label: ""),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int value) {
    setState(() {
      selectedIndex = value;

      switch (value) {
        case 0:
          homeIcon = "assets/images/home_filled.png";
          searchIcon = "assets/images/search.png";
          postIcon = "assets/images/more.png";
          shopIcon = "assets/images/video.png";
          break;
        case 1:
          homeIcon = "assets/images/home.png";
          searchIcon = "assets/images/search_filled.png";
          postIcon = "assets/images/more.png";
          shopIcon = "assets/images/video.png";
          break;
        case 3:
          homeIcon = "assets/images/home.png";
          searchIcon = "assets/images/search.png";
          postIcon = "assets/images/more.png";
          shopIcon = "assets/images/video.png";
          break;
        case 4:
          homeIcon = "assets/images/home.png";
          searchIcon = "assets/images/search.png";
          postIcon = "assets/images/more.png";
          shopIcon = "assets/images/video.png";
          break;
      }
    });
  }
}
