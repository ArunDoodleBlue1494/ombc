import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/feature/subscribe/deliverySchedule/delivery_schedule.dart';
import 'package:ombc/model/widget/bread_box_model.dart';

class BreadBoxPage extends StatefulWidget {
  const BreadBoxPage({Key? key}) : super(key: key);

  @override
  _BreadBoxPageState createState() => _BreadBoxPageState();
}

class _BreadBoxPageState extends State<BreadBoxPage> {
  bool cbValue = false;
  late int quantity;

  void initState() {
    super.initState();
    quantity = 0;
  }

  void updateQuantity(int quantity, int index) {
    setState(() {
      this.quantity = quantity;
    });
  }

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
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
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
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                checkColor: Colors.white,
                                shape: CircleBorder(),
                                value: breadBoxList[index].isSelected,
                                onChanged: (bool? value) {
                                  setState(() {
                                    breadBoxList[index].isSelected = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              breadBoxList[index].productImage!,
                              width: 150,
                              height: 150,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 25, right: 25),
                                child: Visibility(
                                  visible: breadBoxList[index].isSelected!,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          iconSize: 50,
                                          color: CustomColors.brown,
                                          onPressed: () {
                                            if (quantity > 0) {
                                              quantity--;
                                              breadBoxList[index].quantity =
                                                  (breadBoxList[index]
                                                          .quantity! -
                                                      1);
                                              updateQuantity(quantity, index);
                                            }
                                          },
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      Text(
                                        breadBoxList[index].quantity.toString(),
                                        style: TextStyle(
                                            fontSize: 60,
                                            color: CustomColors.brown),
                                      ),
                                      IconButton(
                                          iconSize: 50,
                                          color: CustomColors.brown,
                                          onPressed: () {
                                            if (quantity == 3) {
                                              Fluttertoast.showToast(
                                                  msg:
                                                      "Already 3 loaves per order has been selected");
                                            } else {
                                              quantity++;
                                              breadBoxList[index].quantity =
                                                  (breadBoxList[index]
                                                          .quantity! +
                                                      1);
                                              updateQuantity(quantity, index);
                                            }
                                          },
                                          icon: const Icon(
                                              Icons.add_circle_sharp)),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: Dimens.dp_30),
                        Text(
                          breadBoxList[index].productName!,
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: Dimens.dp_30),
                        Text(
                          breadBoxList[index].ingredient!,
                          style: TextStyle(
                              fontSize: 14,
                              color: CustomColors.darkGreyTextColor),
                        ),
                        SizedBox(height: Dimens.dp_30),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.price,
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                breadBoxList[index].price!,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
          SizedBox(
            height: 20,
          ),
          TextButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.brown),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
            onPressed: () {
              if (quantity == 0) {
                Fluttertoast.showToast(msg: "Choose your bread");
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeliverySchedulePage(),
                    ));
              }
            },
            child: Text(
              Strings.next,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
