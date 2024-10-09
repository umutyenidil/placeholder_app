import 'package:placeholder_app/features/post/data/models/post_model.dart';

abstract interface class PostRemoteSource{
  Future<List<PostModel>> readPosts();
}