part of 'post_bloc.dart';

sealed class PostEvent extends Equatable {
  const PostEvent();
}

final class ReadPostsEvent extends PostEvent {
  @override
  List<Object?> get props => [];
}
