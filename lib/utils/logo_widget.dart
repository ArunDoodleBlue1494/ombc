import 'package:flutter/material.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/common/strings.dart';

class LogoWidget extends StatefulWidget {
  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

TextStyle _getTextStyles(Color color, bool isBold) {
  return TextStyle(
      color: color,
      fontSize: Dimens.dp_40,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal);
}

class _LogoWidgetState extends State<LogoWidget> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "splash_logo",
      child: Material(
        type: MaterialType.transparency, // likely needed
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(ImagePath.logo,
                width: Dimens.dp_50, height: Dimens.dp_30),
            SizedBox(width: Dimens.dp_12),
            Text(Strings.doodle,
                style: _getTextStyles(CustomColors.greenTextColor, false)),
            SizedBox(width: Dimens.dp_12),
            Text(Strings.hr,
                style: _getTextStyles(CustomColors.darkGreyTextColor, true))
          ],
        ),
      ),
    );
  }
}
