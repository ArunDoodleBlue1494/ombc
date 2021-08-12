import 'package:flutter/material.dart';
import 'package:ombc/common/image_path.dart';

class TopBannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(ImagePath.subscribe_banner_image,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3),
    );
  }
}
