import 'package:flutter/material.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/model/widget/products_modal.dart';
import 'package:ombc/utils/extension_utils.dart';

import '../products_card.dart';

class ProductBodyWeb extends StatefulWidget {
  const ProductBodyWeb({Key? key}) : super(key: key);

  @override
  _ProductBodyWebState createState() => _ProductBodyWebState();
}

class _ProductBodyWebState extends State<ProductBodyWeb> {

  double _crossAxisSpacing = 8, _mainAxisSpacing = 12, _aspectRatio = 2;
  int _crossAxisCount = 2;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    var width = (screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) / _crossAxisCount;
    var height = width / _aspectRatio;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Dimens.standard_70,
            ),
            Text(
              Strings.ourProducts.toUpperCase(),
              style: TextStyle(fontSize: Dimens.standard_30),
            ),
            SizedBox(
              height: Dimens.standard_70,
            ),
            productTypes(),
          ],
        ),
      ),
    );
  }

  Widget productTypes() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            height: 100.heightPercentage(context),
            color: CustomColors.colorEAEAEA,
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: .50.widthPercentage(context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Dimens.standard_80,
                  ),
                  Text(
                    "Classic Breads",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: Dimens.standard_40,
                  ),
                  Text(
                    "Speciality Breads",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: Dimens.standard_40,
                  ),
                  Text(
                    "Sweet Stuff",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: Dimens.standard_40,
                  ),
                  Text(
                    "Viennoiserie",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: Dimens.standard_40,
                  ),
                  Text(
                    "Hampers",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: Dimens.standard_40,
                  ),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Scrollbar(
            child: ListView.builder(
                physics:  AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: productsList.length,
                itemBuilder: (context, listIndex) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimens.standard_20),
                    child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                                height: 40,
                                color: CustomColors.colorEAEAEA,
                                child: Center(
                                  child: Text(
                                    productsList[listIndex].type!.toUpperCase(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                            SizedBox(
                              height: Dimens.standard_20,
                            ),
                            GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 40,
                                  mainAxisSpacing: 100,
                                  childAspectRatio: 1/1,
                                    ),
                                itemCount:
                                    productsList[listIndex].products!.length,
                                itemBuilder: (BuildContext ctx, gridIndex) {
                                  return Tooltip(
                                    message: productsList[listIndex]
                                        .products![gridIndex].title!,
                                    child: ProductsCard(
                                      productItem: productsList[listIndex]
                                          .products![gridIndex],
                                    ),
                                  );
                                })
                          ],
                        )),
                  );
                }),
          ),
        )
      ],
    );
  }
}
