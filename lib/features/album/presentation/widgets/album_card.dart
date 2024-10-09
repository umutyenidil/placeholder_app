import 'package:flutter/material.dart';
import 'package:placeholder_app/features/album/domain/entities/album_entity.dart';
import 'package:placeholder_app/features/post/domain/entities/post_entity.dart';

class AlbumCard extends StatelessWidget {
  final AlbumEntity album;

  const AlbumCard({
    super.key,
    required this.album,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ListTile(
          title: Text(
            album.title,
          ),
        ),
      ),
    );
  }
}
