import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ombc/base/base_state.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/widget/top_banner_widget.dart';

class SubscriptionFinalStepPage extends StatefulWidget {
  @override
  SubscriptionFinalStepState createState() => SubscriptionFinalStepState();
}

class SubscriptionFinalStepState extends BaseState<SubscriptionFinalStepPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TopBannerWidget(),
              Container(
                margin: EdgeInsets.only(
                    left: Dimens.dp_30,
                    top: Dimens.dp_20,
                    right: Dimens.dp_30,
                    bottom: Dimens.dp_30),
                padding: EdgeInsets.all(Dimens.dp_30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: Dimens.standard_1,
                      style: BorderStyle.solid,
                      color: CustomColors.lightGrey),
                  borderRadius: BorderRadius.all(Radius.circular(Dimens.dp_8)),
                )),
                child: Column(
                  children: [
                    Text(Strings.choose_your_bread.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CustomColors.black,
                            fontSize: Dimens.dp_22)),
                    SizedBox(height: Dimens.dp_20),
                    customStepperView(),
                    SizedBox(height: Dimens.dp_20),
                    Text(Strings.subscribe.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CustomColors.black,
                            fontSize: Dimens.dp_22)),
                    SizedBox(height: Dimens.dp_60),
                    listTitle(),
                    // listItems()
                    SizedBox(height: Dimens.dp_30),
                    OutlinedButton(
                      child: Text(Strings.subscribe,
                          style:
                          TextStyle(color: CustomColors.brown, fontSize: Dimens.dp_18)),
                      onPressed: () => Fluttertoast.showToast(msg: "Clicked subscribe"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Dimens.dp_30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              footerContainer()
            ],
          ),
        ),
      ),
    );
  }

  Widget listItems() {
    return Container(
      padding: EdgeInsets.all(Dimens.dp_10),
      child: ListView(
        children: [
          cartItem(),
        ],
      ),
    );
  }

  Widget cartItem() {
    return Container(
      // decoration: ShapeDecoration(
      //     shape: RoundedRectangleBorder(
      //   side: BorderSide(
      //       width: Dimens.standard_1,
      //       style: BorderStyle.solid,
      //       color: CustomColors.lightGrey),
      //   borderRadius: BorderRadius.all(Radius.circular(Dimens.dp_8)),
      // )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Image.asset(ImagePath.wheatBread),
                  height: Dimens.dp_100,
                  width: Dimens.dp_100,
                ),
                Column(
                  children: [
                    Text("Monday",
                        style: TextStyle(
                            color: CustomColors.black, fontSize: Dimens.dp_16)),
                    Text("(Rs. 10 * 3 = 300)",
                        style: TextStyle(fontSize: Dimens.dp_16)),
                    Container(
                      child: Image.asset(ImagePath.wheatBread),
                      height: Dimens.dp_30,
                      width: Dimens.dp_30,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Text("Monday",
                    style: TextStyle(
                        color: CustomColors.black, fontSize: Dimens.dp_16)),
                Text("(Rs. 10 * 3 = 300)",
                    style: TextStyle(fontSize: Dimens.dp_16))
              ],
            ),
          ),
          Container(
            child: Text("Rs. 300",
                style: TextStyle(
                    color: CustomColors.black, fontSize: Dimens.dp_16)),
          )
        ],
      ),
    );
  }

  Widget customStepperView() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: CustomColors.darkGreyTextColor, width: 0.5),
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimens.dp_25),
              child: Text(
                Strings.pos_1,
                style: TextStyle(
                    fontSize: 20, color: CustomColors.darkGreyTextColor),
              ),
            ),
          ),
          Container(
            height: Dimens.dp_1,
            width: Dimens.dp_80,
            color: CustomColors.darkGreyTextColor,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: CustomColors.darkGreyTextColor, width: 0.5),
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimens.dp_25),
              child: Text(
                Strings.pos_2,
                style: TextStyle(
                    fontSize: Dimens.dp_20, color: CustomColors.color422d28),
              ),
            ),
          ),
          Container(
            height: Dimens.standard_1,
            width: Dimens.dp_80,
            color: CustomColors.darkGreyTextColor,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: CustomColors.darkGreyTextColor, width: 0.5),
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimens.dp_25),
              child: Text(
                Strings.pos_3,
                style: TextStyle(
                    fontSize: Dimens.dp_20,
                    color: CustomColors.darkGreyTextColor),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listTitle() {
    return Padding(
        padding: EdgeInsets.only(
          left: Dimens.dp_10,
          right: Dimens.dp_10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(Strings.selected_bread.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: CustomColors.darkGreyTextColor,
                    fontSize: Dimens.dp_22)),
            Text(Strings.scheduled.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: CustomColors.darkGreyTextColor,
                    fontSize: Dimens.dp_22)),
            Text(Strings.cost.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: CustomColors.darkGreyTextColor,
                    fontSize: Dimens.dp_22))
          ],
        ));
  }

  Widget footerContainer() {
    return Container(
      padding: EdgeInsets.all(Dimens.dp_20),
      color: CustomColors.color422d28,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Strings.copyright_text,
              style:
                  TextStyle(color: CustomColors.white, fontSize: Dimens.dp_12)),
          Container(
            child: Row(
              children: [
                Text(Strings.home.toUpperCase(),
                    style: TextStyle(
                        color: CustomColors.white, fontSize: Dimens.dp_12)),
                SizedBox(width: Dimens.dp_10),
                Text(Strings.about.toUpperCase(),
                    style: TextStyle(
                        color: CustomColors.white, fontSize: Dimens.dp_12)),
                SizedBox(width: Dimens.dp_10),
                Text(Strings.terms_and_conditions.toUpperCase(),
                    style: TextStyle(
                        color: CustomColors.white, fontSize: Dimens.dp_12))
              ],
            ),
          )
        ],
      ),
    );
  }
}
