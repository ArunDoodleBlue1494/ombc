import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({ Key? key, this.hint,required this.isPwdType, this.controller}) : super(key: key);
  final String? hint;
  final bool isPwdType;
  final TextEditingController? controller;
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: Dimens.dp_50,
      child: TextField(
        controller: widget.controller,
          obscureText: widget.isPwdType,
          decoration: new InputDecoration(
            hintText: widget.hint,
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(0.0),
              ),
              borderSide: new BorderSide(
                color: CustomColors.lightGrey,
                width: 1.0,
              ),
            ),
          )),
    );
  }
}
