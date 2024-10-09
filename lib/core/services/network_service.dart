import 'package:dio/dio.dart';

class NetworkService {
  final Dio _client;

  const NetworkService({
    required Dio dio,
  }) : _client = dio;

  Future<T?> get<T>(String endpoint) async {
    final response = await _client.get(endpoint);

    return response.data as T;
  }
}
