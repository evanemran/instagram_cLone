import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/models/story.dart';
import 'package:instagram_clone/models/user.dart';

import '../models/comment.dart';
import '../models/post.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  User evan = User("evanemran", "Emran Khandaker Evan", "assets/images/stark.jpg", "102", "1890", "36", "Boom");
  User stark = User("tony.stark", "Tony Stark", "assets/images/stark.jpg", "102", "19M", "4", "Boom");
  User banner = User("bruce_banner", "Bruce Banner", "assets/images/stark.jpg", "102", "1890", "36", "Boom");
  User natasha = User("scar.jo", "Scarlett Johansson", "assets/images/stark.jpg", "102", "1890", "36", "Boom");
  User wanda = User("maximoff", "Wanda Maximoff", "assets/images/stark.jpg", "102", "1890", "36", "Boom");
  User tchalla = User("tchalla", "King Tchalla", "assets/images/stark.jpg", "102", "1890", "36", "Boom");
  User steve = User("steverogers", "Steve Rogers", "assets/images/stark.jpg", "102", "1890", "36", "Boom");
  
  List<Post> postList = [];
  
  List<Comment> cList = [];
  
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    
    cList.add(Comment(evan, "just a random comment", "2min"));
    cList.add(Comment(stark, "vision is lucky :v", "2min"));
    cList.add(Comment(natasha, "We should hangout after your multiversal shit is over.", "2min"));
    cList.add(Comment(banner, "@scar.jo count me in also.", "2min"));
    
    postList.add(Post(evan, "assets/images/wanda.jpg", "69", "What mouth?", "2 days", cList));
    postList.add(Post(evan, "assets/images/wanda.jpg", "69", "What mouth?", "2 days", cList));
    postList.add(Post(evan, "assets/images/wanda.jpg", "69", "What mouth?", "2 days", cList));
    postList.add(Post(evan, "assets/images/wanda.jpg", "69", "What mouth?", "2 days", cList));
    postList.add(Post(evan, "assets/images/wanda.jpg", "69", "What mouth?", "2 days", cList));
    postList.add(Post(evan, "assets/images/wanda.jpg", "69", "What mouth?", "2 days", cList));

    List<Story> sList = [
      Story("scar.jo", "assets/images/florance.png", "2 hour ago"),
      Story("scar.jo", "assets/images/florance.png", "2 hour ago"),
      Story("scar.jo", "assets/images/florance.png", "2 hour ago"),
      Story("scar.jo", "assets/images/florance.png", "2 hour ago"),
      Story("scar.jo", "assets/images/florance.png", "2 hour ago"),
      Story("scar.jo", "assets/images/florance.png", "2 hour ago"),
    ];
    
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Instagram", style: TextStyle(color: Colors.black87, fontFamily: "Instagram", fontSize: 34),),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset("assets/images/heart.png", width: 24, height: 24,)),
          IconButton(onPressed: () {}, icon: Image.asset("assets/images/messenger.png", width: 24, height: 24,)),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
                  children: [
                    CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.pinkAccent,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(78),
                            child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                          ),
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(66),
                              child: Image.asset("assets/images/florance.png", width: 66, height: 66, fit: BoxFit.cover,),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
                  ],
                ),),
                Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
                  children: [
                    CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.pinkAccent,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(78),
                            child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                          ),
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(66),
                              child: Image.asset("assets/images/florance.png", width: 66, height: 66, fit: BoxFit.cover,),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
                  ],
                ),),
                Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
                  children: [
                    CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.pinkAccent,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(78),
                            child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                          ),
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(66),
                              child: Image.asset("assets/images/florance.png", width: 66, height: 66, fit: BoxFit.cover,),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
                  ],
                ),),
                Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
                  children: [
                    CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.pinkAccent,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(78),
                            child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                          ),
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(66),
                              child: Image.asset("assets/images/florance.png", width: 66, height: 66, fit: BoxFit.cover,),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
                  ],
                ),),
                Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
                  children: [
                    CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.pinkAccent,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(78),
                            child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                          ),
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(66),
                              child: Image.asset("assets/images/florance.png", width: 66, height: 66, fit: BoxFit.cover,),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
                  ],
                ),),
                Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
                  children: [
                    CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.pinkAccent,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(78),
                            child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                          ),
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(66),
                              child: Image.asset("assets/images/florance.png", width: 66, height: 66, fit: BoxFit.cover,),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
                  ],
                ),),
              ],
            ),
          ),
          Expanded(child: ListView.builder(
              itemCount: postList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, position) {
                var item = postList[position];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.fromLTRB(10,10,0,10), child: Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(item.pPoster.uImage, width: 30, height: 30, fit: BoxFit.cover,),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Expanded(child: Text(item.pPoster.uUsername, style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),)),
                        const SizedBox(width: 10,),
                        IconButton(onPressed: () {}, icon: Image.asset("assets/images/dots.png", width: 20, height: 20,))
                      ],
                    ),),
                    Image.asset(item.pImage, fit: BoxFit.cover, width: screenWidth, height: screenWidth,),
                    Padding(padding: const EdgeInsets.fromLTRB(0, 4, 10, 0), child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Image.asset("assets/images/heart.png", width: 24, height: 24)),
                        IconButton(onPressed: () {}, icon: Image.asset("assets/images/chat.png", width: 24, height: 24)),
                        IconButton(onPressed: () {}, icon: Image.asset("assets/images/send.png", width: 24, height: 24)),
                        const Expanded(child: SizedBox(width: 10,)),
                        IconButton(onPressed: () {}, icon: Image.asset("assets/images/saved.png", width: 24, height: 24)),
                      ],
                    ),),
                    Padding(padding: const EdgeInsets.fromLTRB(10, 4, 10, 0), child: RichText(text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          const TextSpan(text: "Liked by ", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal)),
                          const TextSpan(text: "evanemran", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                          const TextSpan(text: " and ", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal)),
                          TextSpan(text: "${item.pLiked} others.", style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold))
                        ]
                    )),),
                    Padding(padding: const EdgeInsets.fromLTRB(10, 4, 10, 0), child: RichText(text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(text: "${item.pPoster.uUsername} ", style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                          TextSpan(text: item.pCaption, style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal))
                        ]
                    )),),
                    Padding(padding: const EdgeInsets.fromLTRB(10, 4, 10, 0), child: Text("View all ${item.pComments.length} comments", style: const TextStyle(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.normal),),),
                    Padding(padding: const EdgeInsets.fromLTRB(10, 4, 10, 0), child: Text(item.pTime, style: const TextStyle(color: Colors.black45, fontSize: 12),),),
                    const SizedBox(height: 10,),
                  ],
                );
              }))
        ],
      ),
    );
  }
}
