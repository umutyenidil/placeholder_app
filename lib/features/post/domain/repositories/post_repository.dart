import 'package:placeholder_app/core/utils/typedefs.dart';
import 'package:placeholder_app/features/post/domain/entities/post_entity.dart';

abstract interface class PostRepository{
  FutureResult<List<PostEntity>> readPosts();
}