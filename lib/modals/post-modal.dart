import 'package:meta/meta.dart';
import 'package:facebook_ui/modals/modals.dart';
import 'package:flutter/rendering.dart';


class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;


  const Post({
    @required this.user,
    @required this.caption,
    @required this.timeAgo,
    @required this.imageUrl,
    @required this.likes,
    @required this.comments,
    @required this.shares,
  });
}