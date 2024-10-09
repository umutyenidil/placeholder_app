import 'package:placeholder_app/core/utils/typedefs.dart';
import '../entities/album_entity.dart';

abstract interface class AlbumRepository{
  FutureResult<List<AlbumEntity>> readAlbums();
}