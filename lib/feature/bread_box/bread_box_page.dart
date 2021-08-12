import 'package:flutter/material.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/model/widget/bread_box_model.dart';

class BreadBoxPage extends StatefulWidget {
  const BreadBoxPage({Key? key}) : super(key: key);

  @override
  _BreadBoxPageState createState() => _BreadBoxPageState();
}

class _BreadBoxPageState extends State<BreadBoxPage> {
  bool cbValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            Strings.your_bread_box_contains,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: Dimens.dp_10),
          Text(
            Strings.select_max,
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: Dimens.dp_30),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: breadBoxList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 25,right: 25,top: 5,bottom: 5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20)
                      )
                    ),
                    elevation: 2,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Image.asset('assets/images/veg.gif'),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              shape: CircleBorder(),
                              value: breadBoxList[index].isSelected,
                              onChanged: (bool? value) {
                                setState(() {
                                  breadBoxList[index].isSelected=value!;
                                });
                              },
                            )
                          ],
                        ),
                        Image.asset(breadBoxList[index].productImage!,width: 150,height: 150,),
                        SizedBox(height: Dimens.dp_30),
                        Text(breadBoxList[index].productName!,style: TextStyle(fontSize: 18),),
                        SizedBox(height: Dimens.dp_30),
                        Text(breadBoxList[index].ingredient!,style: TextStyle(fontSize: 14,color: CustomColors.darkGreyTextColor),),
                        SizedBox(height: Dimens.dp_30),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(Strings.price,style: TextStyle(fontSize: 20),),
                              Text(breadBoxList[index].price!,style: TextStyle(fontSize: 20),),
                            ],

                          ),
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
