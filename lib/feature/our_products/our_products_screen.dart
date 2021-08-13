import 'package:flutter/material.dart';
import 'package:ombc/feature/our_products/web/body.dart';
import 'package:ombc/widget/responsive_appbar.dart';
import 'package:ombc/widget/responsive_widget.dart';

class OurProducts extends StatefulWidget {
  const OurProducts({Key? key}) : super(key: key);

  @override
  _OurProductsState createState() => _OurProductsState();
}

class _OurProductsState extends State<OurProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveAppBar(),
      body: Container(
        child: ResponsiveWidget(
          mobile: Container(),
          web: ProductBodyWeb(),
        ),
      ),
    );
  }
}
