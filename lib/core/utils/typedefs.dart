import 'package:dartz/dartz.dart';

import '../error/failures.dart';

typedef FutureResult<T> = Future<Either<Failure, T>>;

typedef StreamResult<T> = Stream<Either<Failure, T>>;


