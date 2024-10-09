import 'package:placeholder_app/core/use_case/params.dart';
import 'package:placeholder_app/core/use_case/use_case.dart';
import 'package:placeholder_app/core/utils/typedefs.dart';
import 'package:placeholder_app/features/post/domain/entities/post_entity.dart';
import 'package:placeholder_app/features/post/domain/repositories/post_repository.dart';

class ReadPostsUseCase implements UseCase<List<PostEntity>, NoParams> {
  final PostRepository _repository;

  const ReadPostsUseCase({
    required PostRepository postRepository,
  }) : _repository = postRepository;

  @override
  FutureResult<List<PostEntity>> call(
    NoParams params,
  ) async {
    return await _repository.readPosts();
  }
}
