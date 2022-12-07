import 'package:dio/dio.dart';

const String token = '563492ad6f91700001000001232d54df0a574ac1a07ea425ff8f1a63';

class BaseApi {
  BaseApi({required this.dio});

  final Dio dio;

  Future<Response> getFixed(String url) {
    var headers = {
      'Authorization': token,
    };
    return dio.get(url, options: Options(headers: headers));
  }
}
