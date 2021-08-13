import 'package:flutter/material.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/routes.dart';
import 'package:ombc/utils/navigation.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      color: Colors.brown,
      width: 270,
      child: Drawer(
        child: Container(
          color: CustomColors.drawerBackground,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(height: Dimens.standard_30,),
              _createDrawerItem(text: 'Our Story', onTap: () {
                Navigation.navigateAndFinish(context, Routes.ourStory);

              },),
              _createDrawerItem(text: 'Our Products', onTap: (){
                Navigation.navigateAndFinish(context, Routes.ourProducts);

              }),
              _createDrawerItem(text: 'Store Locator', onTap: () {
                Navigation.navigateAndFinish(context, Routes.storeLocator);

              },),
              _createDrawerItem(text: 'Contact Us', onTap: () {

              },),
              _createDrawerItem(text: 'FAQ', onTap: () {

              },),
              _createDrawerItem(text: 'Blog', onTap: () {

              },),
              _createDrawerItem(text: 'Login', onTap: () {

              },),
              GestureDetector(
                onTap: (){
                  Navigation.navigateAndFinish(context, Routes.subscribeNow);
                },
                child: Container(
                  color: Colors.white,
                  child: Image.asset('assets/images/ombc-daily-button.png'),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
Widget _createDrawerItem(
    {required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text,style: TextStyle(color: Colors.white,fontFamily: 'PoppinsRegular'),),
        )
      ],
    ),
    onTap: onTap,
  );
}
