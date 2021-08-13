import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ombc/base/base_state.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/feature/our_story/app_drawer.dart';
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
  String selectedItem = "";

  List<String> dropDownItems = [
    Strings.drop_down_item_0,
    Strings.drop_down_item_1,
    Strings.drop_down_item_2,
    Strings.drop_down_item_3,
    Strings.drop_down_item_4,
    Strings.drop_down_item_5,
    Strings.drop_down_item_6,
    Strings.drop_down_item_7,
    Strings.drop_down_item_8,
    Strings.drop_down_item_9,
    Strings.drop_down_item_10,
  ];

  @override
  void initState() {
    super.initState();
    selectedItem = dropDownItems.elementAt(0);
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
