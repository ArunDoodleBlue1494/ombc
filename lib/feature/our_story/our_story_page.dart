import 'package:flutter/material.dart';
import 'package:ombc/common/custom_colors.dart';

import 'app_drawer.dart';

class OurStory extends StatelessWidget {
  const OurStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Events"),
        ),
        endDrawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: CustomColors.brown),
          child: AppDrawer(),
        ),
        body: Center(child: Text("Events")));
  }
}
