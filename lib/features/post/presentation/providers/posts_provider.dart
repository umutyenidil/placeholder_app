import 'package:flutter/material.dart';
import 'package:placeholder_app/features/post/domain/entities/post_entity.dart';

class PostsProvider extends ChangeNotifier {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<PostEntity>? _posts;

  List<PostEntity>? get posts => _posts;

  set posts(List<PostEntity>? value) {
    _posts = value;
    notifyListeners();
  }
}
