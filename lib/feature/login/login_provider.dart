import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ombc/base/base_provider.dart';
import 'package:ombc/base/base_model.dart';
import 'package:ombc/common/constants.dart';
import 'package:ombc/model/response/login_response.dart';
import 'package:ombc/utils/shared_pref_manager.dart';
import 'package:ombc/webservice/api_interface.dart';
import 'package:ombc/webservice/api_service.dart';
import 'package:ombc/webservice/dio_error_util.dart';
import 'package:fimber/fimber.dart';


class LoginProvider extends BaseProvider<BaseModel> {
  var result = "";
  onLoginClick(loginRequest, {reqId = 0}) async {
    ApiService.instance
        .getDio()
        .post(ApiInterface.login, data: jsonEncode(loginRequest))
        .then((response) {
      loginResult(response, reqId);
      _updateState(Constants.Success);
    }).catchError((e) {
      Fimber.d("===>"+e.toString());
      _updateState(Constants.Failed);
      listener!.onFailure(DioErrorUtil.handleErrors(e));
    });
  }

  void loginResult(Response response, reqId) {
       LoginResponse loginResponse = LoginResponse.fromJson(response.data);
    ApiService.instance.updateAuthToken(loginResponse.token);
    SharedPrefManager.instance.setString(Constants.TOKEN, loginResponse.token);
    SharedPrefManager.instance.setString(Constants.USERLOGIN, jsonEncode(loginResponse.userInfo));
    listener!.onSuccess(LoginResponse.fromJson(response.data), reqId: reqId);
  }

  void _updateState(String data) {
    result = data;
    notifyListeners();
  }
}
