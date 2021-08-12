import 'package:flutter/material.dart';
import 'package:ombc/feature/our_story/body.dart';
import 'package:ombc/widget/responsive_appbar.dart';
import 'package:ombc/widget/responsive_widget.dart';



class OurStory extends StatelessWidget {
  const OurStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveAppBar(),
      body: ResponsiveWidget(web: OurStoryWeb(),mobile: OurStoryWeb(),),
    );
  }
}
