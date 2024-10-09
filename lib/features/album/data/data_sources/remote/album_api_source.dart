import 'package:placeholder_app/core/error/exceptions.dart';
import 'package:placeholder_app/core/services/network_service.dart';
import 'package:placeholder_app/core/utils/enums/exception_types.dart';
import 'package:placeholder_app/features/album/data/models/album_model.dart';

import 'album_remote_source.dart';

class AlbumApiSource implements AlbumRemoteSource {
  final NetworkService _networkService;

  const AlbumApiSource({
    required NetworkService networkService,
  }) : _networkService = networkService;

  @override
  Future<List<AlbumModel>> readAlbums() async {
    try {
      final result = await _networkService.get<List>("https://jsonplaceholder.typicode.com/users/1/albums");

      if (result == null) {
        throw const ServerException(type: ExceptionTypes.notFound);
      }

      return result.map((record) => AlbumModel.fromMap(record)).toList();
    } on ServerException {
      rethrow;
    } catch (e) {
      throw const ServerException(type: ExceptionTypes.internalServer);
    }
  }
}
