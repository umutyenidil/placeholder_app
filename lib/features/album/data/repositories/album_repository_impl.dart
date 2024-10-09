import 'package:dartz/dartz.dart';
import 'package:placeholder_app/core/error/exceptions.dart';
import 'package:placeholder_app/core/error/failures.dart';
import 'package:placeholder_app/core/utils/typedefs.dart';
import 'package:placeholder_app/features/album/data/data_sources/remote/album_remote_source.dart';
import 'package:placeholder_app/features/album/domain/entities/album_entity.dart';
import 'package:placeholder_app/features/album/domain/repositories/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumRemoteSource _remoteSource;

  const AlbumRepositoryImpl({
    required AlbumRemoteSource albumRemoteSource,
  }) : _remoteSource = albumRemoteSource;

  @override
  FutureResult<List<AlbumEntity>> readAlbums() async {
    try {
      final result = await _remoteSource.readAlbums();
      print("test");


      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(
        t: e.type,
      ));
    }
  }
}
