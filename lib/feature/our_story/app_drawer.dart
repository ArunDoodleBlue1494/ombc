import 'package:flutter/material.dart';
import 'package:ombc/common/routes.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      color: Colors.brown,
      width: 270,
      child: Drawer(
        child: ListView(
          children: [
            _createDrawerItem(text: 'Our Story', onTap: () {  },),
            _createDrawerItem(text: 'Our Products', onTap: ()=>Navigator.pushReplacementNamed(context, Routes.ourProducts),),
            _createDrawerItem(text: 'Store Locator', onTap: () {  },),
            _createDrawerItem(text: 'Contact Us', onTap: () {  },),
            _createDrawerItem(text: 'FAQ', onTap: () {  },),
            _createDrawerItem(text: 'Blog', onTap: () {  },),
            _createDrawerItem(text: 'Login', onTap: () {  },),
            GestureDetector(
              onTap: ()=>Navigator.pushReplacementNamed(context, Routes.subscribe),
              child: Container(
                color: Colors.white,
                child: Image.asset('assets/images/ombc-daily-button.png'),
              ),
            )
          ],
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
