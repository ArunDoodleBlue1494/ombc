import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ombc/base/base_state.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/widget/top_banner_widget.dart';

class DeliverySchedulePage extends StatefulWidget {
  @override
  DeliverySchedulePageState createState() => DeliverySchedulePageState();
}

class DeliverySchedulePageState extends BaseState<DeliverySchedulePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBannerWidget(),
              Container(
                margin: EdgeInsets.only(
                    left: Dimens.dp_10,
                    top: Dimens.dp_20,
                    right: Dimens.dp_10,
                    bottom: Dimens.dp_30),
                padding: EdgeInsets.all(Dimens.dp_30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: Dimens.standard_1,
                      style: BorderStyle.solid,
                      color: CustomColors.lightGrey),
                  borderRadius: BorderRadius.all(Radius.circular(Dimens.dp_8)),
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(Strings.choose_your_bread.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CustomColors.black,
                            fontSize: Dimens.dp_22)),
                    // MyWidget()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }



  // int _index = 0;
  // Widget stepper() {
  //   return Stepper(
  //     type: StepperType.horizontal,
  //     currentStep: _index,
  //     onStepCancel: () {
  //       if (_index > 0) {
  //         setState(() { _index -= 1; });
  //       }
  //     },
  //     onStepContinue: () {
  //       if (_index <= 0) {
  //         setState(() { _index += 1; });
  //       }
  //     },
  //     onStepTapped: (int index) {
  //       setState(() { _index = index; });
  //     },
  //     steps: <Step>[
  //       Step(
  //         title: const Text('Step 1 title'),
  //         content: Container(
  //             alignment: Alignment.centerLeft,
  //             child: const Text('Content for Step 1')
  //         ),
  //       ),
  //       const Step(
  //         title: Text('Step 2 title'),
  //         content: Text('Content for Step 2'),
  //       ),
  //     ],
  //   );
  // }
  //
  // Widget stepperView() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //         decoration: BoxDecoration(
  //             border: Border.all(
  //               color: CustomColors.lightGrey,
  //             ),
  //             borderRadius: BorderRadius.all(Radius.circular(20))),
  //         child: Text("1",
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //                 fontWeight: FontWeight.bold,
  //                 color: CustomColors.black,
  //                 fontSize: Dimens.dp_22)),
  //       ),
  //       Divider(color: CustomColors.color422d28),
  //       Container(
  //         decoration: BoxDecoration(
  //             border: Border.all(
  //               color: CustomColors.lightGrey,
  //             ),
  //             borderRadius: BorderRadius.all(Radius.circular(60))),
  //         child: Padding(
  //           padding: EdgeInsets.all(Dimens.dp_20),
  //           child: Text("2",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   color: CustomColors.black,
  //                   fontSize: Dimens.dp_22)),
  //         ),
  //       ),
  //       Divider(color: CustomColors.color422d28),
  //       Container(
  //         decoration: BoxDecoration(
  //             border: Border.all(
  //               color: CustomColors.lightGrey,
  //             ),
  //             borderRadius: BorderRadius.all(Radius.circular(Dimens.dp_30))),
  //         child: Text("3",
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //                 fontWeight: FontWeight.bold,
  //                 color: CustomColors.black,
  //                 fontSize: Dimens.dp_22)),
  //       ),
  //     ],
  //   );
  // }
}
