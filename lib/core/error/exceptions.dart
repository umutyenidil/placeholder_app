import 'package:equatable/equatable.dart';
import 'package:placeholder_app/core/utils/enums/exception_types.dart';

class ServerException extends Equatable implements Exception {
  final ExceptionTypes type;

  const ServerException({
    this.type = ExceptionTypes.internalServer,
  });

  @override
  List<Object?> get props => [
        type,
      ];
}
