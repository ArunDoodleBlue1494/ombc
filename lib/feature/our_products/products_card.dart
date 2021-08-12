import 'package:flutter/material.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/model/widget/products_modal.dart';


class ProductsCard extends StatelessWidget {

  final ProductsModal? productItem;

  const ProductsCard({Key? key,this.productItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            //offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: Dimens.standard_30,),
            child: Image.asset(
              productItem!
                  .image!,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(height: Dimens.standard_20,),
          Text(productItem!
              .name!),
        ],
      ),
    );
  }
}
