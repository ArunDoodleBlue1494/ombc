import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget web;

  const ResponsiveWidget({Key? key, required this.web, required this.mobile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, layoutConstraints) {
      if (layoutConstraints.maxWidth < 768)
        return mobile;
      else
        return web;
    });
  }
}
