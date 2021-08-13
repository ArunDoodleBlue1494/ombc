import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ombc/feature/our_products/our_products_screen.dart';
import 'package:ombc/feature/subscribe/deliverySchedule/delivery_schedule.dart';
import 'package:ombc/feature/subscribe/finalCart/subscription_final_step.dart';
import 'package:ombc/feature/subscribe/steps/susbscription_steps.dart';
import 'package:ombc/feature/subscribe/subscribe_page.dart';
import 'package:ombc/feature/subscribe/test/stepper_demo.dart';
import 'package:provider/provider.dart';
import 'common/custom_colors.dart';
import 'common/routes.dart';
import 'common/strings.dart';
import 'feature/bread_box/bread_box_page.dart';
import 'feature/login/login_page.dart';
import 'feature/login/login_provider.dart';
import 'feature/subscribe/subscribe_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'feature/subscription_head/subscription_head_page.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  if (!kReleaseMode) {
    // check debug build
    Fimber.plantTree(DebugTree());
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => LoginProvider()
        ),
      ],
      child: MaterialApp(
          builder: (context, widget) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              maxWidth: 1200,
              minWidth: 450,
              defaultScale: true,
              breakpoints: [
                ResponsiveBreakpoint.resize(450, name: MOBILE),
                ResponsiveBreakpoint.autoScale(800, name: TABLET),
                ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                ResponsiveBreakpoint.autoScale(2460, name: "4K"),
              ],
              background: Container(color: Color(0xFFF5F5F5))),
          title: Strings.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: Colors.white,
              accentColor: CustomColors.color422d28),
          home: SafeArea(
            top: false,
            bottom: false,
            child: SubscriptionHeadPage(),
          ),
          routes: {
            Routes.login: (context) => LoginPage(),
            Routes.ourProducts: (context) => OurProducts(),
            Routes.subscribe: (context) => SubscribePage(),
          }),
    );
  }
}
