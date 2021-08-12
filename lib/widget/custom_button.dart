import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;

  CustomButton({ required this.text,required this.onPressed});
  final String text;

  @override
  _CustomButtonState createState() => _CustomButtonState(onPressed: onPressed);
}

class _CustomButtonState extends State<CustomButton> {
  final VoidCallback onPressed;

  _CustomButtonState({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: Material(
        //Wrap with Material
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 10.0,
        color: CustomColors.greenTextColor,
        clipBehavior: Clip.antiAlias,
        // Add This
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width * 0.8,
          height: Dimens.dp_44,
          color: CustomColors.greenTextColor,
          child: new Text(widget.text,
              style:
                  new TextStyle(fontSize: Dimens.dp_16, color: Colors.white)),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
