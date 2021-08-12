
import 'package:flutter/cupertino.dart';
import 'package:ombc/model/base_response.dart';
import 'package:ombc/utils/error_handling.dart';
import 'package:ombc/webservice/callback_listener.dart';
import 'package:ombc/widget/dialog_utils.dart';

abstract class BaseState<T extends StatefulWidget>  extends State<T> implements OnCallbackListener
{

  @override
  void onFailure(BaseResponse error) {
   DialogUtils.instance.dismissProgressbar();
   ErrorHandling.errorValidation(context, error);
  }

  @override
  void onSuccess(any, {int? reqId}) {
    DialogUtils.instance.dismissProgressbar();
  }
}