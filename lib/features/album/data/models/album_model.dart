import '../../domain/entities/album_entity.dart';

class AlbumModel extends AlbumEntity {
  const AlbumModel({
    required super.id,
    required super.userId,
    required super.title,
  });

  factory AlbumModel.fromMap(Map<String, dynamic> map) {
    return AlbumModel(
      id: map["id"] as int,
      userId: map["userId"] as int,
      title: map['title'] as String,
    );
  }
}
