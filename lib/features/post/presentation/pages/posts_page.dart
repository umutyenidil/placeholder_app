import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:placeholder_app/features/post/domain/entities/post_entity.dart';
import 'package:placeholder_app/features/post/presentation/blocs/post/post_bloc.dart';
import 'package:placeholder_app/features/post/presentation/providers/posts_provider.dart';
import 'package:placeholder_app/features/post/presentation/widgets/post_list.dart';
import 'package:provider/provider.dart';

class PostsPage extends StatefulWidget {
  static const String path = '/PostsPage';

  static route() => MaterialPageRoute(
        builder: (_) => content(),
      );

  static content() => ChangeNotifierProvider(
        create: (_) => PostsProvider(),
        child: const PostsPage(),
      );

  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PostBloc>(context).add(ReadPostsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PostBloc, PostState>(
      listener: (context, state) {
        if (state is PostLoading<ReadPostsEvent>) {
          Provider.of<PostsProvider>(context, listen: false).posts = null;
        } else if (state is PostLoaded<ReadPostsEvent, List<PostEntity>>) {
          Provider.of<PostsProvider>(context, listen: false).posts = state.result;
        }
      },
      child: Scaffold(
        key: context.read<PostsProvider>().scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Posts',
          ),
          centerTitle: false,
        ),
        body: const PostList(),
      ),
    );
  }
}
