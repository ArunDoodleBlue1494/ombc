import 'package:flutter/material.dart';
import 'package:ombc/webservice/callback_listener.dart';

import 'base_model.dart';

abstract class BaseProvider<T extends BaseModel> with ChangeNotifier
{
  OnCallbackListener? listener;

  @override
  void dispose() {
    super.dispose();
  }
}