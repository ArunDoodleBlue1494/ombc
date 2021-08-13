import 'package:flutter/material.dart';
import 'package:ombc/base/base_state.dart';
import 'package:ombc/feature/our_story/app_drawer.dart';
import 'package:ombc/feature/subscribe/subscribe_body_mobile.dart';
import 'package:ombc/feature/subscribe/subscribe_body_web.dart';
import 'package:ombc/widget/menubar.dart';
import 'package:ombc/widget/responsive_widget.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class SubscribePage extends StatefulWidget {
  @override
  SubscribePageState createState() => SubscribePageState();
}

class SubscribePageState extends BaseState<SubscribePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: ResponsiveWrapper.of(context).isDesktop ? null :AppDrawer(),
      backgroundColor: Colors.white,
      appBar: MenuBar(scaffoldKey: _scaffoldKey,),
      body: Container(
        child: ResponsiveWidget(
          mobile: SubscribeBodyMobile(),
          web: SubscribeBodyWeb(),
        ),
      ),
    );
  }
}
