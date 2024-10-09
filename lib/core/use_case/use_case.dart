import '../utils/typedefs.dart';

abstract interface class UseCase<Type, Params> {
  FutureResult<Type> call(Params params);
}

abstract interface class StreamUseCase<Type, Params> {
  StreamResult<Type> call(Params params);
}

