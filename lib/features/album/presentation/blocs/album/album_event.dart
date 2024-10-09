part of 'album_bloc.dart';

sealed class AlbumEvent extends Equatable {
  const AlbumEvent();
}

final class ReadAlbumsEvent extends AlbumEvent {
  @override
  List<Object?> get props => [];
}
