import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/models/story.dart';
import 'package:instagram_clone/models/user.dart';
import 'package:instagram_clone/widgets/post_widget.dart';
import 'package:instagram_clone/widgets/posts_widget.dart';
import 'package:instagram_clone/widgets/story_list_widget.dart';

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
    
    postList.add(Post(evan, "assets/images/stark.jpg", "69", "What mouth?", "2 days", cList, false));
    postList.add(Post(evan, "assets/images/stark.jpg", "69", "What mouth?", "2 days", cList, false));
    postList.add(Post(evan, "assets/images/stark.jpg", "69", "What mouth?", "2 days", cList, false));
    postList.add(Post(evan, "assets/images/stark.jpg", "69", "What mouth?", "2 days", cList, false));
    postList.add(Post(evan, "assets/images/stark.jpg", "69", "What mouth?", "2 days", cList, false));
    postList.add(Post(evan, "assets/images/stark.jpg", "69", "What mouth?", "2 days", cList, false));

    List<Story> sList = [
      Story("scar.jo", "assets/images/stark.jpg", "2 hour ago"),
      Story("scar.jo", "assets/images/stark.jpg", "2 hour ago"),
      Story("scar.jo", "assets/images/stark.jpg", "2 hour ago"),
      Story("scar.jo", "assets/images/stark.jpg", "2 hour ago"),
      Story("scar.jo", "assets/images/stark.jpg", "2 hour ago"),
      Story("scar.jo", "assets/images/stark.jpg", "2 hour ago"),
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
          const StoryListWidget(),
          Expanded(child: ListView.builder(
              itemCount: postList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, position) {
                var item = postList[position];

                return PostWidget(post: item);
              }))
        ],
      ),
    );
  }
}
