import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Instagram", style: TextStyle(color: Colors.black, fontFamily: "Instagram", fontSize: 34),),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset("assets/images/heart.png", width: 24, height: 24,)),
          IconButton(onPressed: () {}, icon: Image.asset("assets/images/messenger.png", width: 24, height: 24,)),
        ],
      ),
      body: Center(
        child: Text("Search"),
      ),
    );
  }
}
