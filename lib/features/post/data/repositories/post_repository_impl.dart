import 'package:dartz/dartz.dart';
import 'package:placeholder_app/core/error/exceptions.dart';
import 'package:placeholder_app/core/error/failures.dart';
import 'package:placeholder_app/core/utils/typedefs.dart';
import 'package:placeholder_app/features/post/data/data_sources/remote/post_remote_source.dart';
import 'package:placeholder_app/features/post/domain/entities/post_entity.dart';
import 'package:placeholder_app/features/post/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteSource _remoteSource;

  const PostRepositoryImpl({
    required PostRemoteSource postRemoteSource,
  }) : _remoteSource = postRemoteSource;

  @override
  FutureResult<List<PostEntity>> readPosts() async {
    try {
      final result = await _remoteSource.readPosts();

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(
        t: e.type,
      ));
    }
  }
}
