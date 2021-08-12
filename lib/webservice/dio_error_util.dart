import 'package:dio/dio.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/model/base_response.dart';

class DioErrorUtil {
  static BaseResponse handleErrors(dynamic error) {
    BaseResponse response = BaseResponse();
    try {
      if (error is DioError) {
        DioError dioError = error;
        if (error.type == DioErrorType.sendTimeout) {
          response.success = false;
          response.status = 201;
          response.message = Strings.networkError;
        } else if (dioError.response != null &&
            dioError.response!.data != null) {
          response = BaseResponse.fromJson(dioError.response!.data);
          response.success = true;
        } else {
          response.success = false;
          response.status = 201;
          response.message = dioError.message;
        }
      } else {
        response.success = false;
        response.status = 201;
        response.message = error.message;
      }
    } catch (exception) {
      response.success = false;
      response.status = 201;
      response.message = exception != null
          ? exception.toString()
          : Strings.error;
    }

    return response;
  }
}
