import 'package:flutter/material.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app_drawer.dart';


class OurStoryWeb extends StatelessWidget {
  const OurStoryWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimens.standard_40,),
              Center(child: Text(Strings.ourStory, style: TextStyle(fontSize: Dimens.standard_30),)),
              SizedBox(height: Dimens.standard_40,),
              Text(Strings.storyDescription,style: TextStyle(height: Dimens.standard_2),),
              Text(Strings.ownerName.toUpperCase(),style: TextStyle(fontSize: Dimens.standard_16,fontWeight: FontWeight.w600),),
              SizedBox(height: Dimens.standard_40,),
            ],
          ),
        ),
      ),
    );
  }
}
