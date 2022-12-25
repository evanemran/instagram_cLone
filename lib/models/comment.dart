import 'package:instagram_clone/models/user.dart';

class Comment {
  User commenter;
  String comment;
  String time;

  Comment(this.commenter, this.comment, this.time);
}