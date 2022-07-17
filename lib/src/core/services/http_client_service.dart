import 'package:dio/dio.dart';

import '../util/dio_interceptor.dart';


class HttpClientService {
  static HttpClientService? _instance;
  Dio? _dio;

  Dio get dio  {
    if (_dio == null) {
      _dio = Dio(
        BaseOptions(
          baseUrl: 'http://194.5.188.62:12',
          connectTimeout: 30000,
          sendTimeout: 30000,
          receiveTimeout: 30000,
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json
        ),
      )..interceptors.add(
        DioInterceptor(),
      );
    }
    return _dio!;
  }

  HttpClientService._();

  factory HttpClientService() {
    _instance ??= HttpClientService._();
    return _instance!;
  }
}
