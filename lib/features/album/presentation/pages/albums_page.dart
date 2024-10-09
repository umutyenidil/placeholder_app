import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:placeholder_app/features/album/domain/entities/album_entity.dart';
import 'package:placeholder_app/features/album/presentation/blocs/album/album_bloc.dart';
import 'package:placeholder_app/features/album/presentation/widgets/album_list.dart';
import 'package:provider/provider.dart';

import '../providers/albums_provider.dart';

class AlbumsPage extends StatefulWidget {
  static const String path = '/AlbumsPage';

  static route() => MaterialPageRoute(
        builder: (_) => content(),
      );

  static content() => ChangeNotifierProvider(
        create: (_) => AlbumsProvider(),
        child: const AlbumsPage(),
      );

  const AlbumsPage({super.key});

  @override
  State<AlbumsPage> createState() => _AlbumsPageState();
}

class _AlbumsPageState extends State<AlbumsPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AlbumBloc>(context).add(ReadAlbumsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AlbumBloc, AlbumState>(
      listener: (context, state) {
        if (state is AlbumLoading<ReadAlbumsEvent>) {
          Provider.of<AlbumsProvider>(context, listen: false).albums = null;
        } else if (state is AlbumLoaded<ReadAlbumsEvent, List<AlbumEntity>>) {
          Provider.of<AlbumsProvider>(context, listen: false).albums = state.result;
        }
      },
      child: Scaffold(
        key: context.read<AlbumsProvider>().scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Albums',
          ),
          centerTitle: false,
        ),
        body: const AlbumList(),
      ),
    );
  }
}
