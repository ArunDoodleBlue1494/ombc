import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:fimber/fimber.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


class ApiService {
  //static final String BASE_URL = "http://192.168.10.161:3000/";
  static final String BASE_URL = "https://doodle-hr.herokuapp.com/";//live
  static final ApiService _apiService = ApiService._internal();
  Dio? _dio;
  String? token;

  void _init() {
    if (_dio == null) {
      _dio = Dio();
      _dio!.options.baseUrl = BASE_URL;
      _dio!.interceptors..add(CookieManager(CookieJar()))..add(LogInterceptor());
      _dio!.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      ));
      if (token != null) updateAuthToken(token);


      _dio!.options.receiveTimeout = 10000;
    }
  }

  void updateAuthToken(String? data) {
    token = data!;
    if (_dio != null) {
    } else {
      Fimber.d("token is null");
    }
  }

  Dio getDio() {
    _init();
    return _dio!;
  }

  ApiService._internal();

  static ApiService get instance => _apiService;
}
