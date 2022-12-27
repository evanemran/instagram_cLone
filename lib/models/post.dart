
import 'package:instagram_clone/models/comment.dart';
import 'package:instagram_clone/models/user.dart';

class Post {
  User pPoster;
  String pImage;
  String pLiked;
  String pCaption;
  String pTime;
  List<Comment> pComments;
  bool isLiked;

  Post(this.pPoster, this.pImage, this.pLiked, this.pCaption, this.pTime,
      this.pComments, this.isLiked);
}