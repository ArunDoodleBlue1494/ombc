import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension MarginExtension on double {
  EdgeInsets get top => EdgeInsets.only(top: this);

  EdgeInsets get left => EdgeInsets.only(left: this);

  EdgeInsets get right => EdgeInsets.only(right: this);

  EdgeInsets get bottom => EdgeInsets.only(bottom: this);

  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: this);

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: this);
}

extension MediaQueryPercentage on num {
  double heightPercentage(BuildContext context) {
    return MediaQuery.of(context).size.height * (this / 10);
  }

  double widthPercentage(BuildContext context) {
    return MediaQuery.of(context).size.width * (this / 10);
  }
}

extension toast on String {
  showToast() {
    Fluttertoast.showToast(msg: this);
  }
}

extension dynamicEndpoints on String {
   String withIds(dynamic ids) {
    String url = this;
    if (ids is String) {
      url = url.replaceAll("{}", ids);
    } else if (ids is List<String>) {
      for (int i = 0; i < ids.length; i++) {
        url = url.replaceFirst("{}", ids[i]);
      }
    }
    return url;
  }
}
