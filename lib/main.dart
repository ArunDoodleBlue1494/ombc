import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ombc/feature/our_products/our_products_screen.dart';
import 'package:provider/provider.dart';
import 'common/custom_colors.dart';
import 'common/routes.dart';
import 'common/strings.dart';
import 'feature/login/login_page.dart';
import 'feature/login/login_provider.dart';
import 'feature/subscribe/subscribe_page.dart';

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
          home: SafeArea(
            top: false,
            bottom: false,
            child: SubscribePage(),
          ),
          routes: {
            Routes.login: (context) => LoginPage(),
            Routes.ourProducts: (context) => OurProducts(),
            Routes.subscribe: (context) => SubscribePage(),
          }),
    );
  }
}
