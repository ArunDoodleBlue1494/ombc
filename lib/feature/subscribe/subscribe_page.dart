import 'package:flutter/material.dart';
import 'package:ombc/base/base_state.dart';
import 'package:ombc/feature/our_story/app_drawer.dart';
import 'package:ombc/feature/subscribe/subscribe_body_mobile.dart';
import 'package:ombc/feature/subscribe/subscribe_body_web.dart';
import 'package:ombc/widget/responsive_appbar.dart';
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
    return Scaffold(
      endDrawer: ResponsiveWrapper.of(context).isMobile ? AppDrawer() : null,
      backgroundColor: Colors.white,
      appBar: ResponsiveAppBar(),
      body: Container(
        child: ResponsiveWidget(
          mobile: SubscribeBodyMobile(),
          web: SubscribeBodyWeb(),
        ),
      ),
    );
  }
}
