import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:placeholder_app/core/services/network_service.dart';

final sl = GetIt.instance;

Future<void> injectServices() async {
  sl.registerSingleton(
    NetworkService(
      dio: Dio(),
    ),
  );
}
