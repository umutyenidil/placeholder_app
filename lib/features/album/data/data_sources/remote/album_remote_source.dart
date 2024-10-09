
import 'package:placeholder_app/features/album/data/models/album_model.dart';

abstract interface class AlbumRemoteSource{
  Future<List<AlbumModel>> readAlbums();
}