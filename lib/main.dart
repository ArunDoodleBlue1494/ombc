import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ombc/feature/blog/blog_page.dart';
import 'package:ombc/feature/home/home_page.dart';
import 'package:ombc/feature/login/login_page.dart';
import 'package:ombc/feature/our_story/our_story_page.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'common/custom_colors.dart';
import 'common/routes.dart';
import 'common/strings.dart';
import 'feature/login/login_provider.dart';

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
        ChangeNotifierProvider(create: (context) => LoginProvider()),
      ],
      child: MaterialApp(
          title: Strings.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: CustomColors.primaryColor,
              accentColor: CustomColors.primaryColor),
          builder: (context, widget) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              maxWidth: 1600,
              minWidth: 480,
              defaultScale: true,
              breakpoints: [
                ResponsiveBreakpoint.resize(480, name: MOBILE),
                ResponsiveBreakpoint.autoScale(768, name: TABLET),
                ResponsiveBreakpoint.resize(1080, name: DESKTOP)
              ],
              background: Container(color: Colors.white)),
          initialRoute: Routes.home,
          onGenerateRoute: (RouteSettings settings) {
            return Routes.fadeThrough(settings, (context) {
              switch (settings.name) {
                case Routes.home:
                  return HomePage();
                case Routes.ourStory:
                  return OurStoryPage();
                case Routes.blog:
                  return BlogPage();
                case Routes.login:
                  return LoginPage();
                default:
                  return SizedBox.shrink();
              }
            });
          }),
    );
  }
}
