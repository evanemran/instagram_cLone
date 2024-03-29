import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/utils/app_colors.dart';
import 'package:instagram_clone/widgets/photos_widget.dart';

import '../models/profile_menu.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> with SingleTickerProviderStateMixin {

  late TabController _controller;
  int selectedIndex = 0;
  var selectedColor = Colors.black;

  List<ProfileMenu> mList = [
    ProfileMenu("Settings", "assets/images/gear.png"),
    ProfileMenu("Get Insights", "assets/images/insight.png"),
    ProfileMenu("Your Activity", "assets/images/activity.png"),
    ProfileMenu("Archive", "assets/images/restore.png"),
    ProfileMenu("QR Code", "assets/images/qr.png"),
    ProfileMenu("Saved", "assets/images/saved.png"),
    ProfileMenu("Digital Collectibles", "assets/images/collectible.png"),
    ProfileMenu("Close Friends", "assets/images/task.png"),
    ProfileMenu("Favorites", "assets/images/star.png"),
    ProfileMenu("Discover People", "assets/images/invite.png"),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: 1, length: 3, vsync: this);
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
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        Image.asset("assets/images/line.png", width: 34,),
                        Expanded(child: ListView.builder(
                            itemCount: mList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, position) {
                              var item = mList[position];
                              return Padding(padding: const EdgeInsets.all(10), child: Row(
                                children: [
                                  Image.asset(item.icon, width: 26, height: 26,),
                                  const SizedBox(width: 8,),
                                  Text(item.title, style: const TextStyle(color: Colors.black, fontSize: 16),)
                                ],
                              ),);
                            }))
                      ],
                    );
                    /*return Container(
                      height: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text('Modal BottomSheet'),
                            ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );*/
                  },
                );
              },
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
                      "154",
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
                const Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "Emran Khandaker Evan",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
                const Padding(
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
                          children: const [
                        TextSpan(
                            text: "Programmer | Engineer | YouTuber\n",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "For Coding Tutorials, Follow ",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "@codingwithevan\n",
                            style: TextStyle(
                                color: AppColors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "Need App?, Contact ",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "@softomaze",
                            style: TextStyle(
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
            padding: const EdgeInsets.fromLTRB(19, 10, 24, 0),
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
                    elevation: MaterialStateProperty.all(0),
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
                                    "assets/images/stark.jpg",
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
                                    "assets/images/stark.jpg",
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
                                    "assets/images/stark.jpg",
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
                                    "assets/images/stark.jpg",
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
                                    "assets/images/stark.jpg",
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
                                    "assets/images/stark.jpg",
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
