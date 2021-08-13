import 'package:flutter/material.dart';
import 'menubar.dart';


class ResponsiveAppBar extends StatelessWidget with PreferredSizeWidget {
  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return LayoutBuilder(
        builder: (context, layoutConstraints) {
          if(layoutConstraints.maxWidth < 768)
            return MenuBar(scaffoldKey: _scaffoldKey,);
          else
            return MenuBar(scaffoldKey: _scaffoldKey,);
        }
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(2000);
}
