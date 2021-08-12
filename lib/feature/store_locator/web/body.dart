import 'package:flutter/material.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/utils/extension_utils.dart';

class StoreLocatorBodyWeb extends StatelessWidget {
  const StoreLocatorBodyWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimens.standard_130),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Dimens.standard_40),
          Text(Strings.storeLocator.toUpperCase(),style: TextStyle(fontSize: Dimens.standard_30),),
          SizedBox(height: Dimens.standard_30),
          Container(
            width: 8.widthPercentage(context),
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          )
        ],
      ),
    );
  }
}
