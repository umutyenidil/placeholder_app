import 'package:get_it/get_it.dart';
import 'package:placeholder_app/core/services/network_service.dart';
import 'package:placeholder_app/features/album/data/data_sources/remote/album_api_source.dart';
import 'package:placeholder_app/features/album/data/data_sources/remote/album_remote_source.dart';
import 'package:placeholder_app/features/album/data/repositories/album_repository_impl.dart';
import 'package:placeholder_app/features/album/domain/repositories/album_repository.dart';
import 'package:placeholder_app/features/album/domain/use_cases/read_albums_use_case.dart';
import 'package:placeholder_app/features/album/presentation/blocs/album/album_bloc.dart';

final sl = GetIt.instance;

Future<void> injectAlbum() async {
  sl
    ..registerFactory<AlbumRemoteSource>(
      () => AlbumApiSource(
        networkService: sl<NetworkService>(),
      ),
    )
    ..registerFactory<AlbumRepository>(
      () => AlbumRepositoryImpl(
        albumRemoteSource: sl<AlbumRemoteSource>(),
      ),
    )
    ..registerFactory<ReadAlbumsUseCase>(
      () => ReadAlbumsUseCase(
        albumRepository: sl<AlbumRepository>(),
      ),
    )
    ..registerFactory<AlbumBloc>(
      () => AlbumBloc(
        readAlbumsUseCase: sl<ReadAlbumsUseCase>(),
      ),
    );
}
