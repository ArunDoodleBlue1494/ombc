import 'package:flutter/material.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/utils/code_snippet.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class DialogUtils {
  BuildContext? _context;
  bool _isProgressDialogShown = false;
  static final DialogUtils? _singleton =  DialogUtils._internal();

  DialogUtils._internal();

  static DialogUtils get instance => _singleton!;

  void showProgress(BuildContext context) {
    _context = context;
    _isProgressDialogShown = true;
    showDialog(
        barrierDismissible: false,
        context: _context!,
        builder: (context) {
          return Dialog(
              child: Container(
                color: Colors.transparent,
                width: Dimens.dp_50,
                height: Dimens.dp_100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(Strings.loading),
                    SizedBox(height: Dimens.dp_20),
                    SpinKitPouringHourglass(
                      color: Colors.green,
                      size: Dimens.dp_50,
                    )
                  ],
                ),
              ));
        }
    );
  }


  void dismissProgressbar() {
    if (_isProgressDialogShown) {
      Navigator.pop(_context!);
      _isProgressDialogShown = false;
    } //pop dialog
  }


  void showAuthAlert(BuildContext context) {
    _context = context;
    showDialog(
        barrierDismissible: false,
        context: _context!,
        builder: (context) {
          return Dialog(
              child: Container(
                color: Colors.transparent,
                width: Dimens.dp_50,
                height: Dimens.dp_150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: Dimens.dp_20),
                    Text(Strings.token_expired),
                    SizedBox(height: Dimens.dp_20),
                    MaterialButton(
                      height: Dimens.dp_40,
                      minWidth: Dimens.dp_70,
                      color: Theme
                          .of(context)
                          .primaryColor,
                      textColor: Colors.white,
                      child: new Text(Strings.okay),
                      onPressed: () => {
                      CodeSnippet.instance.logout(context)
                    },
                    )
                  ],
                ),
              ));
        }
    );
  }
}
