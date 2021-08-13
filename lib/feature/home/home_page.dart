import 'package:flutter/material.dart';
import 'package:ombc/utils/typography.dart';
import 'package:ombc/widget/footer.dart';
import 'package:ombc/widget/menubar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //You should use `Scaffold` if you have `TextField` in body.
      //Otherwise on focus your `TextField` won`t scroll when keyboard popup.
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container
            MenuBar(),
            //Body Container
            Expanded(
              child: Container(
                color: Colors.black26,
                alignment: Alignment.center,
                child: Text(
                  "Temporary Background",
                  style: bodyTextStyle,
                ),
              ),
            ),

            //Footer Container
            //Here you will get unexpected behaviour when keyboard pops-up.
            //So its better to use `bottomNavigationBar` to avoid this.
            FooterBar(),
          ],
        ),
      ),
    );
  }
}
