import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ombc/common/routes.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/model/response/user_info.dart';
import 'package:ombc/utils/shared_pref_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class CodeSnippet {
  static final CodeSnippet _singleton = new CodeSnippet._internal();

  CodeSnippet._internal();

  static CodeSnippet get instance => _singleton;

  void enableStatusBar(bool isEnable) {
    if (isEnable)
      SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    else
      SystemChrome.setEnabledSystemUIOverlays([]);
  }

  bool isEmail(String em) {
    /* String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);
    Fimber.d("======>"+em+"status : "+regExp.hasMatch(em).toString());
    return regExp.hasMatch(em);*/
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(em);
  }


  String getFormattedDate(
      String date, String inputFormat, String outputFormat) {
    DateFormat dateFormat = DateFormat(inputFormat);
    DateFormat dateFormatOutput = DateFormat(outputFormat);
    DateTime dateTime = dateFormat.parse(date);
    return dateFormatOutput.format(dateTime);
  }

  String? setData(String data) {
     return toBeginningOfSentenceCase(data);
  }

  String generateUserName(List<UserInfo> data) {
    var buffer = new StringBuffer();
    for (var value in data) {
      buffer.write(value.name! + ", ");
    }
    return buffer.toString();
  }

  Future<bool> isInternetAvailable() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
      showAlertMsg(Strings.no_internet);
      return false;
    } on SocketException catch (_) {
      showAlertMsg(Strings.no_internet);
      return false;
    }
  }

  showAlertMsg(String? msg) {
    Fluttertoast.showToast(
        msg: msg!, backgroundColor: Colors.red[400], textColor: Colors.white);
  }

  showMsg(String msg) {
    Fluttertoast.showToast(
        msg: msg, backgroundColor: Colors.green, textColor: Colors.white);
  }

  dayBetween(int startDate, int endDate) {
    int oneDay = 1000 * 60 * 60 * 24;
    int diff = (startDate - endDate).abs();
    int day = (diff / oneDay).round();
    Fimber.d("=====>total Days" + day.toString());
  }

  logout(BuildContext context) {
    SharedPrefManager.instance.clearAll();
    Navigator.pushReplacementNamed(context, Routes.login);
  }

  bool isMobile(BuildContext context) {
    return ResponsiveWrapper.of(context).isMobile;
  }

  bool isDesktop(BuildContext context) {
    return ResponsiveWrapper.of(context).isDesktop;
  }

}
