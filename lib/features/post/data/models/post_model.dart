import 'package:placeholder_app/features/post/domain/entities/post_entity.dart';

class PostModel extends PostEntity {
  const PostModel({
    required super.id,
    required super.userId,
    required super.title,
    required super.body,
  });

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map["id"] as int,
      userId: map["userId"] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }
}
