import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/utils/app_colors.dart';
import 'package:instagram_clone/widgets/photos_widget.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> with SingleTickerProviderStateMixin {

  late TabController _controller;
  int selectedIndex = 0;
  var selectedColor = Colors.black;

  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        title: const Text(
          "evanemran",
          style: TextStyle(color: Colors.black87, fontSize: 22),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/more.png",
                width: 22,
                height: 22,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/ham.png",
                width: 22,
                height: 22,
              )),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 20, 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(80)),
                    child: Image.asset(
                      "assets/images/stark.jpg",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                    child: Column(
                  children: const [
                    Text(
                      "381",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Posts",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: const [
                    Text(
                      "1,845",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: const [
                    Text(
                      "325",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 4, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "Emran Khandaker Evan",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "Digital Creator",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: RichText(
                      text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                        TextSpan(
                            text: "Programmer | Engineer | YouTuber\n",
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "For Coding Tutorials, Follow ",
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "@codingwithevan\n",
                            style: const TextStyle(
                                color: AppColors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "Need App?, Contact ",
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "@softomaze",
                            style: const TextStyle(
                                color: AppColors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                      ])),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(19, 0, 20, 0),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/link.png",
                  width: 14,
                  height: 14,
                  color: AppColors.blue,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "www.evanemran.info",
                  style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(19, 10, 24, 0),
            child: Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.grey)),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.pinkAccent,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(74),
                                child: Image.asset(
                                  "assets/images/gradient.jpg",
                                  fit: BoxFit.cover,
                                  width: 74,
                                  height: 74,
                                ),
                              ),
                              CircleAvatar(
                                radius: 33,
                                backgroundColor: Colors.white,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(62),
                                  child: Image.asset(
                                    "assets/images/florance.png",
                                    width: 62,
                                    height: 62,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            "scar.jo",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 37,
                          backgroundColor: Colors.pinkAccent,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(78),
                                child: Image.asset(
                                  "assets/images/gradient.jpg",
                                  fit: BoxFit.cover,
                                  width: 78,
                                  height: 78,
                                ),
                              ),
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.white,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(66),
                                  child: Image.asset(
                                    "assets/images/florance.png",
                                    width: 66,
                                    height: 66,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            "scar.jo",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 37,
                          backgroundColor: Colors.pinkAccent,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(78),
                                child: Image.asset(
                                  "assets/images/gradient.jpg",
                                  fit: BoxFit.cover,
                                  width: 78,
                                  height: 78,
                                ),
                              ),
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.white,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(66),
                                  child: Image.asset(
                                    "assets/images/florance.png",
                                    width: 66,
                                    height: 66,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            "scar.jo",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 37,
                          backgroundColor: Colors.pinkAccent,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(78),
                                child: Image.asset(
                                  "assets/images/gradient.jpg",
                                  fit: BoxFit.cover,
                                  width: 78,
                                  height: 78,
                                ),
                              ),
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.white,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(66),
                                  child: Image.asset(
                                    "assets/images/florance.png",
                                    width: 66,
                                    height: 66,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            "scar.jo",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 37,
                          backgroundColor: Colors.pinkAccent,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(78),
                                child: Image.asset(
                                  "assets/images/gradient.jpg",
                                  fit: BoxFit.cover,
                                  width: 78,
                                  height: 78,
                                ),
                              ),
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.white,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(66),
                                  child: Image.asset(
                                    "assets/images/florance.png",
                                    width: 66,
                                    height: 66,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            "scar.jo",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 37,
                          backgroundColor: Colors.pinkAccent,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(78),
                                child: Image.asset(
                                  "assets/images/gradient.jpg",
                                  fit: BoxFit.cover,
                                  width: 78,
                                  height: 78,
                                ),
                              ),
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.white,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(66),
                                  child: Image.asset(
                                    "assets/images/florance.png",
                                    width: 66,
                                    height: 66,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            "scar.jo",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          TabBar(
            controller: _controller,
            indicatorColor: Colors.black,
            tabs: const [
              Tab(
                icon: ImageIcon(AssetImage("assets/images/grid.png"), color: Colors.black87,),
              ),
              Tab(
                icon: ImageIcon(AssetImage("assets/images/video.png"), color: Colors.black87,),
              ),
              Tab(
                icon: ImageIcon(AssetImage("assets/images/tag.png"), color: Colors.black87,),
              ),
            ],
          ),
          Expanded(child: TabBarView(
              controller: _controller,
              children: const [
                PhotosWidget(),
                PhotosWidget(),
                PhotosWidget(),
              ])),
        ],
      ),
    );
  }
}
