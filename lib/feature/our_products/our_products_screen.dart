import 'package:flutter/material.dart';
import 'package:ombc/feature/our_products/web/body.dart';
import 'package:ombc/feature/our_story/app_drawer.dart';
import 'package:ombc/widget/responsive_appbar.dart';
import 'package:ombc/widget/responsive_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'mobile/body.dart';

class OurProducts extends StatefulWidget {
  const OurProducts({Key? key}) : super(key: key);

  @override
  _OurProductsState createState() => _OurProductsState();
}

class _OurProductsState extends State<OurProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ResponsiveWrapper.of(context).isMobile ? AppDrawer() : null,
      backgroundColor: Colors.white,
      appBar: ResponsiveAppBar(),
      body: Container(
        child: ResponsiveWidget(
          mobile: ProductBodyMobile(),
          web: ProductBodyWeb(),
        ),
      ),
    );
  }
}
