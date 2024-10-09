import 'package:placeholder_app/core/use_case/params.dart';
import 'package:placeholder_app/core/use_case/use_case.dart';
import 'package:placeholder_app/core/utils/typedefs.dart';
import 'package:placeholder_app/features/album/domain/entities/album_entity.dart';
import 'package:placeholder_app/features/album/domain/repositories/album_repository.dart';

class ReadAlbumsUseCase implements UseCase<List<AlbumEntity>, NoParams> {
  final AlbumRepository _repository;

  const ReadAlbumsUseCase({
    required AlbumRepository albumRepository,
  }) : _repository = albumRepository;

  @override
  FutureResult<List<AlbumEntity>> call(
    NoParams params,
  ) async {
    print("test");

    return await _repository.readAlbums();
  }
}
