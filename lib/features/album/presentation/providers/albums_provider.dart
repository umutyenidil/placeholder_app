import 'package:flutter/material.dart';
import 'package:placeholder_app/features/album/domain/entities/album_entity.dart';

class AlbumsProvider extends ChangeNotifier {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<AlbumEntity>? _albums;

  List<AlbumEntity>? get albums => _albums;

  set albums(List<AlbumEntity>? value) {
    _albums = value;
    notifyListeners();
  }
}
