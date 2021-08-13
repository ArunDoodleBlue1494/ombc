import 'package:flutter/material.dart';
import 'package:ombc/base/base_state.dart';
import 'package:ombc/feature/subscribe/subscribe_body_mobile.dart';
import 'package:ombc/feature/subscribe/subscribe_body_web.dart';
import 'package:ombc/widget/responsive_appbar.dart';
import 'package:ombc/widget/responsive_widget.dart';

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
