import 'package:flutter/material.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/utils/typography.dart';
import 'package:ombc/widget/footer.dart';
import 'package:ombc/widget/menubar.dart';

class OurStoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //You should use `Scaffold` if you have `TextField` in body.
      //Otherwise on focus your `TextField` won`t scroll when keyboard popup.
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container
            MenuBar(),

            //Body Container
            SizedBox(
              height: Dimens.dp_30,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.12),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      Strings.ourStory.toUpperCase(),
                      style: textStyle30,
                    ),
                  ),
                  SizedBox(
                    height: Dimens.dp_30,
                  ),
                  Container(
                    child: Text(
                      Strings.ourStoryContent,
                      style: textStyle14,
                    ),
                  ),
                  SizedBox(
                    height: Dimens.dp_20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      Strings.labelMansiSandesh,
                      style: textStyleMediumGray16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimens.dp_80,
            ),
            //Footer Container
            FooterBar(),
          ],
        ),
      ),
    );
  }
}
