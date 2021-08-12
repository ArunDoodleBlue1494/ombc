import 'package:ombc/model/base_response.dart';

abstract class OnCallbackListener
{
  void onSuccess(dynamic any, {int reqId});
  void onFailure(BaseResponse response);
}