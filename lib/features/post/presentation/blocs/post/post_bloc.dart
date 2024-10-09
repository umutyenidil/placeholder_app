import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:placeholder_app/core/use_case/params.dart';
import 'package:placeholder_app/core/utils/enums/exception_types.dart';
import 'package:placeholder_app/features/post/domain/entities/post_entity.dart';
import 'package:placeholder_app/features/post/domain/use_cases/read_posts_use_case.dart';

part 'post_event.dart';

part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final ReadPostsUseCase _readPosts;

  PostBloc({
    required ReadPostsUseCase readPostsUseCase,
  })  : _readPosts = readPostsUseCase,
        super(PostInitial()) {
    on<ReadPostsEvent>(_onReadPostsEvent);
  }

  Future<void> _onReadPostsEvent(
    ReadPostsEvent event,
    Emitter<PostState> emit,
  ) async {
    emit(PostLoading(
      event: event,
    ));

    final result = await _readPosts(NoParams());

    return result.fold(
      (failure) => emit(PostError<ReadPostsEvent>(
        event: event,
        type: failure.type,
      )),
      (result) => emit(PostLoaded<ReadPostsEvent, List<PostEntity>>(
        event: event,
        result: result,
      )),
    );
  }
}
