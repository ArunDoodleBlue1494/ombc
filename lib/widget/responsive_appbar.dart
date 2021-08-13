import 'package:flutter/material.dart';
import 'package:ombc/widget/mobile_app_bar.dart';
import 'package:ombc/widget/web_app_bar.dart';

class ResponsiveAppBar extends StatelessWidget with PreferredSizeWidget {
  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, layoutConstraints) {
      if (layoutConstraints.maxWidth < 768)
        return MobileAppBar();
      else
        return WebAppBar();
    });
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
