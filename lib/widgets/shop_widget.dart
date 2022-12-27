import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/utils/app_colors.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.fromLTRB(8,0,8,0),
              decoration: const BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: Row(
                children: const [
                  Icon(Icons.search,),
                  SizedBox(width: 8,),
                  Expanded(child: TextField(
                    decoration: InputDecoration.collapsed(hintText: "Search shops"),
                  ))
                ],
              ),

            ),
            const SizedBox(height: 8,),
            Expanded(child: SingleChildScrollView(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(20, (index) {
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/stark.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.circular(0.0),),
                    ),
                  );
                }),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
