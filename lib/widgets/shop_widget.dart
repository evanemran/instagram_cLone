import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShopWidget extends StatefulWidget {
  const ShopWidget({Key? key}) : super(key: key);

  @override
  State<ShopWidget> createState() => _ShopWidgetState();
}

class _ShopWidgetState extends State<ShopWidget> {
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
        title: const Text("Shop", style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset("assets/images/check.png", width: 24, height: 24,)),
          IconButton(onPressed: () {}, icon: Image.asset("assets/images/ham.png", width: 24, height: 24,)),
        ],
      ),
      body: Center(
        child: Text("Shop"),
      ),
    );
  }
}
