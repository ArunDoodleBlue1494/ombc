import 'package:flutter/material.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/common/strings.dart';

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
    //  leading: Container(margin:EdgeInsets.only(left: 20),child: Image.asset(ImagePath.ombcLogo)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(ImagePath.ombcLogo,width: 50,height: 50,),
          SizedBox(width: 120,),
          Row(
            children: [
              Text(Strings.ourStory,style: TextStyle(color: Colors.black),),
              SizedBox(width: 20,),
              Text(Strings.ourProducts),
              SizedBox(width: 20,),
              Text(Strings.storeLocator),
              SizedBox(width: 20,),
              Text(Strings.contactUs),
              SizedBox(width: 20,),
              Text(Strings.faq),
              SizedBox(width: 20,),
              Text(Strings.blog),
              SizedBox(width: 20,),
              Text(Strings.login),
              SizedBox(width: 20,),
            ],
          ),

          Row(
            children: [
              Image.asset(ImagePath.ombcLogo,width: 50,height: 50,),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Strings.subscribeNow,style: TextStyle(fontSize: 8),),
                  Text(Strings.homeDescription,style: TextStyle(fontSize: 8)),
                ],
              ),
              SizedBox(width: 20,)
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
