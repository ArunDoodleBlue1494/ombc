import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/model/widget/products_modal.dart';

class ProductBodyMobile extends StatelessWidget {
  const ProductBodyMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics:  AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Text(
              Strings.ourProducts,
              style: TextStyle(fontSize: 30),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: productsList.length,
                itemBuilder: (context, listIndex) {
                  return Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: Dimens.standard_20),
                            child: Container(
                                height: 30,
                                color: Colors.grey.withOpacity(.5),
                                child: Center(
                                  child: Text(
                                    productsList[listIndex].type!,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                          ),
                          ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: productsList[listIndex].products!.length,
                              itemBuilder: (BuildContext ctx, gridIndex) {
                                return Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 70,vertical: 50),
                                  padding: EdgeInsets.symmetric(horizontal: 60,vertical: 30),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        //offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        productsList[listIndex]
                                            .products![gridIndex]
                                            .image!,
                                      //  width: 60
                                      ),
                                      SizedBox(height: Dimens.standard_20,),
                                      Text(productsList[listIndex]
                                          .products![gridIndex]
                                          .name!),
                                    ],
                                  ),
                                );
                              })
                        ],
                      ));
                })
          ],
        ),
      ),
    );
  }
}
