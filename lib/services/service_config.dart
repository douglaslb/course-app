import 'package:dio/dio.dart';

class ServiceConfig {
  String _url = "";
  int timeout = 5000;

  ServiceConfig(this._url, {this.timeout = 5000});

  Dio create() {
    Dio dio = Dio(BaseOptions(connectTimeout: timeout, baseUrl: _url));
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions request) async {
      // middleware para interceptar requisição (do something)
      return request;
    }, onResponse: (Response response) async {
      // middleware para interceptar respostas (do something)
      return response;
    }, onError: (DioError error) async {
      // middleware para interceptar erros que ocorrem na requisição
      return error;
    }));

    return dio;
  }
}
