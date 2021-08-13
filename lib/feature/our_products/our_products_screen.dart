import 'package:flutter/material.dart';
import 'package:ombc/feature/our_products/web/body.dart';
import 'package:ombc/feature/our_story/app_drawer.dart';
import 'package:ombc/widget/menubar.dart';
import 'package:ombc/widget/responsive_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'mobile/body.dart';

class OurProducts extends StatefulWidget {
  const OurProducts({Key? key}) : super(key: key);

  @override
  _OurProductsState createState() => _OurProductsState();
}

class _OurProductsState extends State<OurProducts> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: ResponsiveWrapper.of(context).isDesktop ? null :AppDrawer(),
      backgroundColor: Colors.white,
      appBar: MenuBar(scaffoldKey: _scaffoldKey,),
      body: Container(
        child: ResponsiveWidget(
          mobile: ProductBodyMobile(),
          web: ProductBodyWeb(),
        ),
      ),
    );
  }
}
