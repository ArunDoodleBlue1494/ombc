import 'package:flutter/material.dart';
import 'package:ombc/feature/our_story/app_drawer.dart';
import 'package:ombc/feature/store_locator/web/body.dart';
import 'package:ombc/widget/menubar.dart';
import 'package:ombc/widget/responsive_widget.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class StoreLocatorScreen extends StatelessWidget {
  const StoreLocatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: ResponsiveWrapper.of(context).isDesktop ? null :AppDrawer(),
      appBar: MenuBar(scaffoldKey: _scaffoldKey,),
      body: ResponsiveWidget(
        web: StoreLocatorBodyWeb(),
        mobile: StoreLocatorBodyWeb(),
      ),
    );
  }
}
