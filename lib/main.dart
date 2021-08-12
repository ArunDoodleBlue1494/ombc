import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ombc/feature/our_products/our_products_screen.dart';
import 'package:ombc/feature/subscribe/subscribe_page.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'common/custom_colors.dart';
import 'common/routes.dart';
import 'common/strings.dart';
import 'feature/login/login_page.dart';
import 'feature/login/login_provider.dart';
import 'feature/our_story/our_story.dart';
import 'feature/store_locator/store_locator_screen.dart';

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
          title: Strings.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: Colors.white,
              accentColor: CustomColors.color422d28),
          builder: (context, widget) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              maxWidth: 1600,
              minWidth: 480,
              defaultScale: true,
              breakpoints: [
                ResponsiveBreakpoint.resize(480, name: MOBILE),
                ResponsiveBreakpoint.autoScale(800, name: TABLET),
                ResponsiveBreakpoint.resize(1000, name: DESKTOP)
              ],
              background: Container(color: Colors.white)),
          home: SafeArea(
            top: false,
            bottom: false,
            // child: OurStory(),
            child: OurStory(),
          ),
          routes: {
            Routes.login: (context) => LoginPage(),
            Routes.ourStory: (context) => OurStory(),
            Routes.ourProducts: (context) => OurProducts(),
            Routes.storeLocator : (context) => StoreLocatorScreen(),
            Routes.subscribeNow : (context) => SubscribePage(),
          }),
    );
  }
}
