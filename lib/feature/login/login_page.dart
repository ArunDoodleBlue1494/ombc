import 'package:flutter/material.dart';
import 'package:ombc/base/base_state.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/feature/login/login_provider.dart';
import 'package:ombc/model/base_response.dart';
import 'package:ombc/model/request/login_request.dart';
import 'package:ombc/utils/code_snippet.dart';
import 'package:ombc/utils/extension_utils.dart';
import 'package:ombc/utils/logo_widget.dart';
import 'package:ombc/widget/custom_button.dart';
import 'package:ombc/widget/custom_text_field.dart';
import 'package:ombc/widget/dialog_utils.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends BaseState<LoginPage> {
  var _emailController = TextEditingController(text: "developer@gmail.com");
  var _pwdController = TextEditingController(text: "developer123");
  var _loginProvider;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // CodeSnippet.instance.enableStatusBar(true);
    _loginProvider = Provider.of<LoginProvider>(context, listen: false);
    _loginProvider.listener = this;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 2.heightPercentage(context)),
                LogoWidget(),
                SizedBox(height: 1.heightPercentage(context)),
                Text(Strings.login,
                    style:
                        TextStyle(color: Colors.black, fontSize: Dimens.dp_20)),
                SizedBox(height: 0.5.heightPercentage(context)),
                CustomTextField(
                    hint: Strings.employee_id,
                    isPwdType: false,
                    controller: _emailController),
                SizedBox(height: Dimens.dp_12),
                CustomTextField(
                    hint: Strings.password,
                    isPwdType: true,
                    controller: _pwdController),
                SizedBox(height: Dimens.dp_12),
                _buildForgotPwd(context),
                SizedBox(height: Dimens.dp_12),
                CustomButton(
                    text: Strings.login, onPressed: () => {_onClick()}),
                SizedBox(height: Dimens.dp_20),
                Consumer<LoginProvider>(
                    builder: (context, provider, child) => Text(
                        Strings.result_consumer + '${_loginProvider.result}',
                        style: TextStyle(
                            color: Colors.black, fontSize: Dimens.dp_16))),
                SizedBox(height: Dimens.dp_20),
                Selector<LoginProvider, String>(
                  builder: (context, data, child) {
                    return Text(
                        Strings.result_selector + '${_loginProvider.result}',
                        style: TextStyle(
                            color: Colors.black, fontSize: Dimens.dp_16));
                  },
                  selector: (buildContext, provider) => provider.result,
                )
              ],
            ),
          ],
        ),
      )),
    );
  }

  void _onClick() {
    if (_emailController.text.toString().isEmpty) {
      Strings.email_empty.showToast();
    } else if (!CodeSnippet.instance.isEmail(_emailController.text)) {
      Strings.invalid_email.showToast();
    } else if (_pwdController.text.toString().isEmpty) {
      Strings.invalid_email.showToast();
    } else {
      DialogUtils.instance.showProgress(context);
      LoginRequest loginRequest = LoginRequest();
      loginRequest.email = _emailController.text;
      loginRequest.password = _pwdController.text;
      _loginProvider.onLoginClick(loginRequest);
    }
  }

  Container _buildForgotPwd(BuildContext context) {
    return Container(
        width: 8.widthPercentage(context),
        child: Text(
          Strings.forgot_password,
          textAlign: TextAlign.end,
          style:
              TextStyle(color: CustomColors.forgot_pwd, fontSize: Dimens.dp_14),
        ));
  }

  @override
  void onFailure(BaseResponse error) {
    super.onFailure(error);
  }

  @override
  void onSuccess(any, {int? reqId}) {
    super.onSuccess(any, reqId: reqId);
    //Navigator.pushReplacementNamed(context, Routes.home);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _pwdController.dispose();
  }
}
