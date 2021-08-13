import 'package:flutter/material.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/model/widget/products_modal.dart';

class ProductBodyWeb extends StatelessWidget {
  const ProductBodyWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            Strings.ourProducts.toUpperCase(),
            style: TextStyle(fontSize: Dimens.standard_30),
          ),
          SizedBox(
            height: 40,
          ),
          productTypes(),
        ],
      ),
    );
  }

  Widget productTypes() {
    return Row(
      children: [
        Container(
          child: Column(
            children: [
              SizedBox(
                height: Dimens.standard_30,
              ),
              Text(
                "Classic Breads",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: Dimens.standard_20,
              ),
              Text(
                "Classic Breads",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: Dimens.standard_20,
              ),
              Text(
                "Classic Breads",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: Dimens.standard_20,
              ),
              Text(
                "Classic Breads",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: Dimens.standard_20,
              ),
              Text(
                "Classic Breads",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: Dimens.standard_20,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: productsList.length,
              itemBuilder: (context, listIndex) {
                return Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          productsList[listIndex].type!,
                          style: TextStyle(color: Colors.black),
                        ),
                        GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 3 / 2,
                                    crossAxisSpacing: 150,
                                    mainAxisSpacing: 20),
                            itemCount: productsList[listIndex].products!.length,
                            itemBuilder: (BuildContext ctx, gridIndex) {
                              return Container(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      productsList[listIndex]
                                          .products![gridIndex]
                                          .image!,
                                      height: 50,
                                    ),
                                    Text(productsList[listIndex]
                                        .products![gridIndex]
                                        .name!),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                              );
                            })
                      ],
                    ));
              }),
        )
      ],
    );
  }
}
