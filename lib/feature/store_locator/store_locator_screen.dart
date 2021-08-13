import 'package:flutter/material.dart';
import 'package:ombc/feature/our_story/app_drawer.dart';
import 'package:ombc/feature/store_locator/web/body.dart';
import 'package:ombc/widget/responsive_appbar.dart';
import 'package:ombc/widget/responsive_widget.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class StoreLocatorScreen extends StatelessWidget {
  const StoreLocatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ResponsiveWrapper.of(context).isMobile ? AppDrawer() : null,
      appBar: ResponsiveAppBar(),
      body: ResponsiveWidget(
        web: StoreLocatorBodyWeb(),
        mobile: StoreLocatorBodyWeb(),
      ),
    );
  }
}
