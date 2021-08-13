import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/feature/our_story/app_drawer.dart';
import 'package:ombc/widget/menubar.dart';
import 'package:ombc/utils/extension_utils.dart';

class IntroSlider extends StatelessWidget {
  const IntroSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    final List<Widget> imgList = [

         Image.asset(ImagePath.slider1,fit: BoxFit.cover,
           height: height,),
      Image.asset(ImagePath.slider2,fit: BoxFit.cover,
        height: height,),
      Image.asset(ImagePath.slider3,fit: BoxFit.cover,
        height: height,),

    ];
    return Scaffold(
      endDrawer: AppDrawer(),
      appBar: MenuBar(),
      body: Container(
        width: 100.widthPercentage(context),
        child: CarouselSlider(
            items: imgList,
            options: CarouselOptions(
              height: height,
              viewportFraction: 2.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
            )
        ),
      ),
    );
  }
}
