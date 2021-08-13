import 'package:flutter/material.dart';
import 'package:ombc/common/image_path.dart';

class MobileAppBar extends StatelessWidget with PreferredSizeWidget {
  const MobileAppBar({
    Key? key,
    this.title,
    this.imageLeft,
    this.imageRight,
    this.onClickRightImage,
    this.backFlag = false,
    this.onClickLeftImage,
    this.backGroundColor,
    this.imageLeftColor,
    this.textStyle,
  }) : super(key: key);

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
      leading: Image.asset(ImagePath.ombcLogo),
      actions: [
        Icon(
          Icons.menu,
          color: Colors.black,
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
