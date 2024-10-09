part of 'album_bloc.dart';

sealed class AlbumState extends Equatable {
  const AlbumState();
}

final class AlbumInitial extends AlbumState {
  @override
  List<Object> get props => [];
}

final class AlbumLoading<Event> extends AlbumState {
  final Event event;

  const AlbumLoading({
    required this.event,
  });

  @override
  List<Object> get props => [];
}

final class AlbumLoaded<Event, Result> extends AlbumState {
  final Event event;
  final Result result;

  const AlbumLoaded({
    required this.event,
    required this.result,
  });

  @override
  List<Object?> get props => [];
}

final class AlbumError<Event> extends AlbumState {
  final Event event;
  final ExceptionTypes type;

  const AlbumError({
    required this.event,
    required this.type,
  });

  @override
  List<Object?> get props => [];
}
