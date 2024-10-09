import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:placeholder_app/core/use_case/params.dart';
import 'package:placeholder_app/core/utils/enums/exception_types.dart';
import 'package:placeholder_app/features/album/domain/entities/album_entity.dart';
import 'package:placeholder_app/features/album/domain/use_cases/read_albums_use_case.dart';

part 'album_event.dart';

part 'album_state.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
  final ReadAlbumsUseCase _readAlbums;

  AlbumBloc({
    required ReadAlbumsUseCase readAlbumsUseCase,
  })  : _readAlbums = readAlbumsUseCase,
        super(AlbumInitial()) {
    on<ReadAlbumsEvent>(_onReadPostsEvent);
  }

  Future<void> _onReadPostsEvent(
    ReadAlbumsEvent event,
    Emitter<AlbumState> emit,
  ) async {
    emit(AlbumLoading(
      event: event,
    ));

    final result = await _readAlbums(NoParams());

    return result.fold(
      (failure) => emit(AlbumError<ReadAlbumsEvent>(
        event: event,
        type: failure.type,
      )),
      (result) => emit(AlbumLoaded<ReadAlbumsEvent, List<AlbumEntity>>(
        event: event,
        result: result,
      )),
    );
  }
}
