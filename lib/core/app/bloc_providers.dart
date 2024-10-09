import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:placeholder_app/features/album/presentation/blocs/album/album_bloc.dart';
import 'package:placeholder_app/features/post/presentation/blocs/post/post_bloc.dart';

final sl = GetIt.instance;

class BlocProviders extends StatelessWidget {
  final Widget child;

  const BlocProviders({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostBloc>(
          create: (_) => sl<PostBloc>(),
        ),
        BlocProvider<AlbumBloc>(
          create: (_) => sl<AlbumBloc>(),
        ),
      ],
      child: child,
    );
  }
}
