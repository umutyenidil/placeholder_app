import 'package:get_it/get_it.dart';
import 'package:placeholder_app/core/services/network_service.dart';
import 'package:placeholder_app/features/post/data/data_sources/remote/post_api_source.dart';
import 'package:placeholder_app/features/post/data/data_sources/remote/post_remote_source.dart';
import 'package:placeholder_app/features/post/data/repositories/post_repository_impl.dart';
import 'package:placeholder_app/features/post/domain/repositories/post_repository.dart';
import 'package:placeholder_app/features/post/domain/use_cases/read_posts_use_case.dart';
import 'package:placeholder_app/features/post/presentation/blocs/post/post_bloc.dart';

final sl = GetIt.instance;

Future<void> injectPost() async {
  sl
    ..registerFactory<PostRemoteSource>(
      () => PostApiSource(
        networkService: sl<NetworkService>(),
      ),
    )
    ..registerFactory<PostRepository>(
      () => PostRepositoryImpl(postRemoteSource: sl<PostRemoteSource>()),
    )
    ..registerFactory(
      () => ReadPostsUseCase(
        postRepository: sl<PostRepository>(),
      ),
    )
    ..registerFactory(
      () => PostBloc(
        readPostsUseCase: sl<ReadPostsUseCase>(),
      ),
    );
}
