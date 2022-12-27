import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/widgets/post_widget.dart';

import '../models/post.dart';

class PostsWidget extends StatefulWidget {
  const PostsWidget({Key? key, required this.postList}) : super(key: key);

  final List<Post> postList;

  @override
  State<PostsWidget> createState() => _PostsWidgetState();
}

class _PostsWidgetState extends State<PostsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.postList.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, position) {
          var item = widget.postList[position];
          return PostWidget(post: item);
        });
  }
}
