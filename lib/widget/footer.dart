import 'package:flutter/material.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/routes.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/utils/code_snippet.dart';
import 'package:ombc/utils/extension_utils.dart';
import 'package:ombc/utils/typography.dart';

class FooterBar extends StatelessWidget {
  const FooterBar({Key? key}) : super(key: key);

  Widget _renderFooterButton(
    String title,
    VoidCallback? onPressed,
  ) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: footerTextStyle,
        ),
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith(
              (state) => CustomColors.primaryColor),
          textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered))
              return TextStyle(decoration: TextDecoration.underline);
            return footerTextStyle;
          }),
        ));
  }

  Widget _footerLink(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        _renderFooterButton(Strings.home, () {
          Navigator.popUntil(context, ModalRoute.withName(Routes.home));
        }),
        _renderFooterButton(Strings.about, () {}),
        _renderFooterButton(Strings.terms_condition, () {})
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(Dimens.dp_5),
        color: CustomColors.primaryColor,
        child: CodeSnippet.instance.isDesktop(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: CodeSnippet.instance.isDesktop(context)
                        ? 0.4.widthPercentage(context)
                        : 0,
                  ),
                  Text(
                    Strings.copyWriteLabel,
                    style: footerTextStyle,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: _footerLink(context),
                    ),
                  ),
                  SizedBox(
                    width: CodeSnippet.instance.isDesktop(context)
                        ? 0.4.widthPercentage(context)
                        : 0,
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Strings.copyWriteLabel,
                    style: footerTextStyle,
                  ),
                  _footerLink(context)
                ],
              ));
  }
}
