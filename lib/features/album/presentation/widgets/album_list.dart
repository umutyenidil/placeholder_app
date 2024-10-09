import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:placeholder_app/features/album/presentation/widgets/album_card.dart';
import 'package:placeholder_app/features/post/presentation/widgets/post_card.dart';
import 'package:provider/provider.dart';

import '../../../post/presentation/blocs/post/post_bloc.dart';
import '../providers/albums_provider.dart';

class AlbumList extends StatelessWidget {
  const AlbumList({super.key});

  @override
  Widget build(BuildContext context) {
    final albums = Provider.of<AlbumsProvider>(context).albums;
    return albums == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : RefreshIndicator(
            onRefresh: () async => BlocProvider.of<PostBloc>(context).add(ReadPostsEvent()),
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              itemBuilder: (context, index) {
                return AlbumCard(album: albums[index]);
              },
              separatorBuilder: (_, __) => const SizedBox(height: 12.0),
              itemCount: albums.length,
            ),
          );
  }
}
