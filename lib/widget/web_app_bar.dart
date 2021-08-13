import 'package:flutter/material.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/common/routes.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/utils/navigation.dart';

class WebAppBar extends StatelessWidget with PreferredSizeWidget {
  const WebAppBar(
      {Key? key,
        this.title,
        this.imageLeft,
        this.imageRight,
        this.onClickRightImage,
        this.backFlag = false,
        this.onClickLeftImage,
        this.backGroundColor,
        this.imageLeftColor,
        this.textStyle})
      : super(key: key);

  final String? title, imageLeft, imageRight;
  final VoidCallback? onClickRightImage;
  final bool? backFlag;
  final VoidCallback? onClickLeftImage;
  final Color? backGroundColor, imageLeftColor;
  final TextStyle? textStyle;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
    //  leading: Container(margin:EdgeInsets.only(left: 20),child: Image.asset(ImagePath.ombcLogo)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(ImagePath.ombcLogo,width: Dimens.standard_50,height: Dimens.standard_50,),
          SizedBox(width: Dimens.standard_120,),
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigation.navigateAndFinish(context, Routes.ourStory);
                },
                  child: Text(Strings.ourStory,style: TextStyle(color: Colors.black),)),
              SizedBox(width: Dimens.standard_20,),
              InkWell(
                onTap: (){
                  Navigation.navigateTo(context, Routes.ourProducts);
                },
                  child: Text(Strings.ourProducts)),
              SizedBox(width: Dimens.standard_20,),
              InkWell(onTap: (){
                Navigation.navigateTo(context, Routes.storeLocator);
              },child: Text(Strings.storeLocator)),
              SizedBox(width: Dimens.standard_20,),
              Text(Strings.contactUs),
              SizedBox(width: Dimens.standard_20,),
              Text(Strings.faq),
              SizedBox(width: Dimens.standard_20,),
              Text(Strings.blog),
              SizedBox(width: Dimens.standard_20,),
              Text(Strings.login),
              SizedBox(width: Dimens.standard_20,),
            ],
          ),

          Row(
            children: [
              Image.asset(ImagePath.ombcLogo,width: Dimens.standard_50,height: Dimens.standard_50,),
              SizedBox(width: Dimens.standard_10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigation.navigateTo(context, Routes.subscribeNow);
                    },
                      child: Text(Strings.subscribeNow,style: TextStyle(fontSize: Dimens.standard_8),)),
                  Text(Strings.homeDescription,style: TextStyle(fontSize: Dimens.standard_8)),
                ],
              ),
              SizedBox(width: Dimens.standard_20,)
            ],
          ),

        ],
      ),
      actions: [

      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(kToolbarHeight);
}
