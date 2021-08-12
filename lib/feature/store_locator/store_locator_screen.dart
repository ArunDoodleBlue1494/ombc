import 'package:flutter/material.dart';
import 'package:ombc/feature/store_locator/web/body.dart';
import 'package:ombc/widget/responsive_appbar.dart';
import 'package:ombc/widget/responsive_widget.dart';

class StoreLocatorScreen extends StatelessWidget {
  const StoreLocatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveAppBar(),
      body: ResponsiveWidget(
        web: StoreLocatorBodyWeb(),
        mobile: StoreLocatorBodyWeb(),
      ),
    );
  }
}
