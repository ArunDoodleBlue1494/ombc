
import 'package:flutter/material.dart';
import 'package:ombc/model/base_response.dart';
import 'package:ombc/widget/dialog_utils.dart';

import 'code_snippet.dart';

class ErrorHandling
{
  static void errorValidation(BuildContext context, BaseResponse response) {
    if (response.status == 400) {
        DialogUtils.instance.showAuthAlert(context);
    } else {
     CodeSnippet.instance.showAlertMsg(response.message);
    }
  }
}