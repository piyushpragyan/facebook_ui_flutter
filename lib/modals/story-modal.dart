import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:facebook_ui/modals/modals.dart';


class Story{

  final User user;
  final String imageUrl;
  final bool isViewed;


  const Story({
    @required this.user,
    @required this.imageUrl,
    this.isViewed = false,
});
}