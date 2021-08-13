import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ombc/base/base_state.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/common/routes.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/feature/subscription_head/subscription_head_page.dart';

class SubscribeBodyMobile extends StatefulWidget {
  @override
  SubscribeBodyMobileState createState() => SubscribeBodyMobileState();
}

class SubscribeBodyMobileState extends BaseState<SubscribeBodyMobile> {
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
        resizeToAvoidBottomInset: false,
        backgroundColor: CustomColors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(height: Dimens.dp_20),
          Image.asset(ImagePath.subscribe_banner_image),
          SizedBox(height: Dimens.dp_20),
          Padding(
              padding: EdgeInsets.all(Dimens.dp_20),
              child: Text(Strings.choose_your_location.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: CustomColors.black,
                      fontSize: Dimens.dp_22))),
          Padding(
              padding: EdgeInsets.only(
                  top: Dimens.dp_20,
                  bottom: Dimens.dp_20,
                  left: Dimens.dp_40,
                  right: Dimens.dp_40),
              child: Text(Strings.check_subscription_availability,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: CustomColors.black,
                      fontSize: Dimens.dp_18))),
          SizedBox(height: Dimens.dp_20),
          buildDropdownButton(),
          SizedBox(height: Dimens.dp_20),
          locationNotFoundWidget(),
          SizedBox(height: Dimens.dp_20),
          buttonContainer(),
          SizedBox(height: Dimens.dp_50),
          footerContainer()
        ]));
  }

  Widget buttonContainer() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        OutlinedButton(
          child: Text(Strings.select,
              style:
                  TextStyle(color: CustomColors.brown, fontSize: Dimens.dp_18)),
          onPressed: () {
            if(selectedItem==Strings.choose_your_location){
              Fluttertoast.showToast(msg: "Please select your location");
            }
            else{
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubscriptionHeadPage(),
                  ));
            }
          },
          style: ElevatedButton.styleFrom(
            side: BorderSide(width: Dimens.standard_1, color: Colors.brown),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.dp_30),
            ),
          ),
        ),
        SizedBox(width: Dimens.dp_10),
        OutlinedButton(
          child: Text(Strings.cancel,
              style:
                  TextStyle(color: CustomColors.brown, fontSize: Dimens.dp_18)),
          onPressed: () => Fluttertoast.showToast(msg: "Clicked cancel"),
          style: ElevatedButton.styleFrom(
            side: BorderSide(width: Dimens.standard_1, color: Colors.brown),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.dp_30),
            ),
          ),
        ),
      ],
    );
  }

  Widget locationNotFoundWidget() {
    return Padding(
        padding: EdgeInsets.only(
            top: Dimens.dp_20,
            bottom: Dimens.dp_20,
            left: Dimens.dp_40,
            right: Dimens.dp_40),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            WidgetSpan(
              child: Icon(
                Icons.info_sharp,
                size: Dimens.standard_18,
                color: CustomColors.black,
              ),
            ),
            TextSpan(
                text: Strings.location_not_found,
                style: TextStyle(color: CustomColors.black)),
            TextSpan(
              text: Strings.contact_email_ombc,
              style: TextStyle(color: CustomColors.forgot_pwd),
              recognizer: new TapGestureRecognizer()
                ..onTap = () => Fluttertoast.showToast(msg: "Clicked email"),
            ),
          ]),
        ));
  }

  Widget buildDropdownButton() {
    return Container(
      padding: EdgeInsets.only(left: Dimens.dp_15, right: Dimens.dp_10),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
        side: BorderSide(
            width: Dimens.standard_1,
            style: BorderStyle.solid,
            color: CustomColors.lightGrey),
        borderRadius: BorderRadius.all(Radius.circular(Dimens.dp_8)),
      )),
      // decoration: BoxDecoration(
      //     border: Border.all(
      //   color: CustomColors.lightGrey,
      //   width: Dimens.standard_2,
      // )),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            value: selectedItem,
            onChanged: (String? changedValue) {
              setState(() {
                selectedItem = changedValue!;
                print(selectedItem);
              });
            },
            items: dropDownItems.map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value,
                    style: TextStyle(
                        color: CustomColors.black, fontSize: Dimens.dp_16)),
              );
            }).toList()),
      ),
    );
  }

  Widget footerContainer() {
    return Container(
      padding: EdgeInsets.all(Dimens.dp_20),
      color: CustomColors.color422d28,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Strings.copyWriteLabel,
              style:
                  TextStyle(color: CustomColors.white, fontSize: Dimens.dp_8)),
          Container(
            child: Row(
              children: [
                Text(Strings.home.toUpperCase(),
                    style: TextStyle(
                        color: CustomColors.white, fontSize: Dimens.dp_8)),
                SizedBox(width: Dimens.dp_8),
                Text(Strings.about.toUpperCase(),
                    style: TextStyle(
                        color: CustomColors.white, fontSize: Dimens.dp_8)),
                SizedBox(width: Dimens.dp_8),
                Text(Strings.terms_condition.toUpperCase(),
                    style: TextStyle(
                        color: CustomColors.white, fontSize: Dimens.dp_8))
              ],
            ),
          )
        ],
      ),
    );
  }
}
