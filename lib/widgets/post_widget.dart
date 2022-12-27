
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/heart_animation_widget.dart';

import '../models/comment.dart';
import '../models/post.dart';
import '../models/user.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  var heartIcon = "assets/images/heart.png";
  bool isHeartAnimating = false;
  bool isLiked = false;

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

    double screenWidth = MediaQuery.of(context).size.width;
    var item = widget.post;
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
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              item.isLiked = true;
              isLiked = true;
              isHeartAnimating = true;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(item.pImage, fit: BoxFit.cover, width: screenWidth, height: screenWidth,),
              HeartAnimationWidget(duration: const Duration(milliseconds: 500), widget: Opacity(opacity: isHeartAnimating ? 1 : 0, child: Image.asset("assets/images/heart_big.png", width: 100, height: 100, fit: BoxFit.fitHeight, color: Colors.white),), isAnimating: isHeartAnimating, onEnd: () {
                setState(() {
                  isHeartAnimating = false;
                });
              },)
            ],
          ),
        ),
        Padding(padding: const EdgeInsets.fromLTRB(0, 4, 0, 0), child: Row(
          children: [
            HeartAnimationWidget(widget: IconButton(onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
            }, icon: Image.asset(isLiked ? "assets/images/red_heart.png" : "assets/images/heart.png", width: 24, height: 24)),
                isAnimating: isLiked),
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
  }
}
