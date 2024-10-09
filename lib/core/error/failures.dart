import 'package:equatable/equatable.dart';
import 'package:placeholder_app/core/utils/enums/exception_types.dart';

abstract interface class Failure {
  final ExceptionTypes type;

  const Failure({required this.type});
}

class ServerFailure extends Equatable implements Failure {
  final ExceptionTypes t;

  const ServerFailure({
    required this.t,
  });

  @override
  List<Object?> get props => throw UnimplementedError();

  @override
  ExceptionTypes get type => t;
}
