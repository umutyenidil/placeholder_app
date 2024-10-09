import 'package:placeholder_app/core/error/exceptions.dart';
import 'package:placeholder_app/core/services/network_service.dart';
import 'package:placeholder_app/core/utils/enums/exception_types.dart';
import 'package:placeholder_app/features/post/data/data_sources/remote/post_remote_source.dart';
import 'package:placeholder_app/features/post/data/models/post_model.dart';

class PostApiSource implements PostRemoteSource {
  final NetworkService _networkService;

  const PostApiSource({
    required NetworkService networkService,
  }) : _networkService = networkService;

  @override
  Future<List<PostModel>> readPosts() async {
    try {
      final result = await _networkService.get<List>("https://jsonplaceholder.typicode.com/posts");

      if (result == null) {
        throw const ServerException(type: ExceptionTypes.notFound);
      }

      return result.map((record) => PostModel.fromMap(record)).toList();
    } on ServerException {
      rethrow;
    } catch (e) {
      throw const ServerException(type: ExceptionTypes.internalServer);
    }
  }
}
