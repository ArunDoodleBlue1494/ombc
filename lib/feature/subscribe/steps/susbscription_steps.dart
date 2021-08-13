import 'package:flutter/material.dart';
import 'package:ombc/base/base_state.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/feature/subscribe/deliverySchedule/delivery_schedule.dart';
import 'package:ombc/feature/subscribe/test/stepper_demo.dart';
import 'package:ombc/widget/responsive_appbar.dart';
import 'package:ombc/widget/responsive_widget.dart';

class SubscriptionSteps extends StatefulWidget {
  @override
  SubscriptionStepState createState() => SubscriptionStepState();
}

class SubscriptionStepState extends BaseState<SubscriptionSteps> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    throw Scaffold(
      backgroundColor: Colors.white,
      appBar: ResponsiveAppBar(),
      body: Container(
        // margin: EdgeInsets.only(
        //     left: Dimens.dp_10,
        //     top: Dimens.dp_20,
        //     right: Dimens.dp_10,
        //     bottom: Dimens.dp_30),
        // padding: EdgeInsets.all(Dimens.dp_30),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        // decoration: ShapeDecoration(
        //     shape: RoundedRectangleBorder(
        //       side: BorderSide(
        //           width: Dimens.standard_1,
        //           style: BorderStyle.solid,
        //           color: CustomColors.lightGrey),
        //       borderRadius: BorderRadius.all(Radius.circular(Dimens.dp_8)),
        //     )),
        child: ResponsiveWidget(
          mobile: DeliverySchedulePage(),
          web: DeliverySchedulePage(),
        ),
      ),
    );
  }
}
