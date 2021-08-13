import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/feature/bread_box/bread_box_page.dart';
import 'package:ombc/feature/our_story/app_drawer.dart';

class SubscriptionHeadPage extends StatefulWidget {
  const SubscriptionHeadPage({Key? key}) : super(key: key);

  @override
  _SubscriptionHeadPageState createState() => _SubscriptionHeadPageState();
}

class _SubscriptionHeadPageState extends State<SubscriptionHeadPage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldState,
      resizeToAvoidBottomInset: false,
      backgroundColor: CustomColors.white,
      endDrawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: CustomColors.brown),
        child: AppDrawer(),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimens.dp_20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/ombc-brand-logo.png',
                    width: 50, height: 50),
                IconButton(
                  icon: Icon(Icons.menu, color: CustomColors.brown, size: 25),
                  onPressed: () {
                    _scaffoldState.currentState?.openEndDrawer();
                  },
                ),
              ],
            ),
            SizedBox(height: Dimens.dp_20),
            Image.asset(ImagePath.subscribe_banner_image),
            SizedBox(height: Dimens.dp_10),
            Padding(
              padding: EdgeInsets.all(Dimens.dp_20),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                        color: CustomColors.darkGreyTextColor, width: 0.5),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: Dimens.dp_30),
                      Text(
                        Strings.choose_your_bread,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: Dimens.dp_30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /*MaterialButton(
                            color: CustomColors.brown,
                            shape: CircleBorder(),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(100),
                              child: Text(
                                '1',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),*/
                          Container(
                            decoration: BoxDecoration(
                              color: CustomColors.brown,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: CustomColors.darkGreyTextColor,
                                  width: 0.5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(Dimens.dp_25),
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: CustomColors.white),
                              ),
                            ),
                          ),
                          Container(
                            height: 1,
                            width: 80,
                            color: CustomColors.darkGreyTextColor,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: CustomColors.darkGreyTextColor,
                                  width: 0.5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(Dimens.dp_25),
                              child: Text("2",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: CustomColors.darkGreyTextColor)),
                            ),
                          ),
                          Container(
                            height: 1,
                            width: 80,
                            color: CustomColors.darkGreyTextColor,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: CustomColors.darkGreyTextColor,
                                  width: 0.5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(Dimens.dp_25),
                              child: Text("3",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: CustomColors.darkGreyTextColor)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: Dimens.dp_20),
                      BreadBoxPage(),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
