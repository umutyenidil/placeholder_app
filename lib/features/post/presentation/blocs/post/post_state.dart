part of 'post_bloc.dart';

sealed class PostState extends Equatable {
  const PostState();
}

final class PostInitial extends PostState {
  @override
  List<Object> get props => [];
}

final class PostLoading<Event> extends PostState {
  final Event event;

  const PostLoading({
    required this.event,
  });

  @override
  List<Object> get props => [];
}

final class PostLoaded<Event, Result> extends PostState {
  final Event event;
  final Result result;

  const PostLoaded({
    required this.event,
    required this.result,
  });

  @override
  List<Object?> get props => [];
}

final class PostError<Event> extends PostState {
  final Event event;
  final ExceptionTypes type;

  const PostError({
    required this.event,
    required this.type,
  });

  @override
  List<Object?> get props => [];
}
