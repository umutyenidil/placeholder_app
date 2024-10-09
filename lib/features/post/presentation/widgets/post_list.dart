import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:placeholder_app/features/post/presentation/widgets/post_card.dart';
import 'package:provider/provider.dart';

import '../blocs/post/post_bloc.dart';
import '../providers/posts_provider.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = Provider.of<PostsProvider>(context).posts;
    return posts == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : RefreshIndicator(
            onRefresh: () async => BlocProvider.of<PostBloc>(context).add(ReadPostsEvent()),
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              itemBuilder: (context, index) {
                return PostCard(post: posts[index]);
              },
              separatorBuilder: (_, __) => const SizedBox(height: 12.0),
              itemCount: posts.length,
            ),
          );
  }
}
