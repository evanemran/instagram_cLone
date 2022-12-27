import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/post.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  var heartIcon = "assets/images/heart.png";
  @override
  Widget build(BuildContext context) {
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
              item.isLiked = item.isLiked ? false : true;
            });
          },
          child: Image.asset(item.pImage, fit: BoxFit.cover, width: screenWidth, height: screenWidth,),
        ),
        Padding(padding: const EdgeInsets.fromLTRB(0, 4, 10, 0), child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Image.asset(item.isLiked ? "assets/images/red_heart.png" : "assets/images/heart.png", width: 24, height: 24)),
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
