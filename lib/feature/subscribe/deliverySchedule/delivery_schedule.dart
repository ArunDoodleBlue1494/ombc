import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ombc/base/base_state.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/dimens.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/feature/subscribe/finalCart/subscription_final_step.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TopBannerWidget(),
              Container(
                margin: EdgeInsets.only(
                    left: Dimens.dp_30,
                    top: Dimens.dp_20,
                    right: Dimens.dp_30,
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
                  children: [
                    Text(Strings.choose_your_bread.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CustomColors.black,
                            fontSize: Dimens.dp_22)),
                    SizedBox(height: Dimens.dp_20),
                    // stepperHeader()
                    // StepperDemo(),
                    customStepperView(),
                    SizedBox(height: Dimens.dp_50),
                    contentView(),
                    TextButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.brown),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.brown),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubscriptionFinalStepPage(),
                            ));
                      },
                      child: Text(
                        Strings.next,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              footerContainer()
            ],
          ),
        ),
      ),
    );
  }

  Widget contentView() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimens.dp_100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          planColumn(),
          deliveryDaysColumn(),
          Column(
            children: [
              Text(Strings.products_included.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: CustomColors.black, fontSize: Dimens.dp_22))
            ],
          )
        ],
      ),
    );
  }

  Widget deliveryDaysColumn() {
    return Column(
      children: [
        Text(Strings.delivery_days.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(color: CustomColors.black, fontSize: Dimens.dp_22))
      ],
    );
  }

  Widget planColumn() {
    return Column(
      children: [
        Text(Strings.select_plan.toUpperCase(),
            textAlign: TextAlign.center,
            style:
                TextStyle(color: CustomColors.black, fontSize: Dimens.dp_22)),
        SizedBox(height: Dimens.dp_20),
      ],
    );
  }

  Widget customStepperView() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: CustomColors.darkGreyTextColor, width: 0.5),
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimens.dp_25),
              child: Text(
                Strings.pos_1,
                style: TextStyle(
                    fontSize: 20, color: CustomColors.darkGreyTextColor),
              ),
            ),
          ),
          Container(
            height: Dimens.dp_1,
            width: Dimens.dp_80,
            color: CustomColors.darkGreyTextColor,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: CustomColors.darkGreyTextColor, width: 0.5),
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimens.dp_25),
              child: Text(
                Strings.pos_2,
                style: TextStyle(
                    fontSize: Dimens.dp_20, color: CustomColors.color422d28),
              ),
            ),
          ),
          Container(
            height: Dimens.standard_1,
            width: Dimens.dp_80,
            color: CustomColors.darkGreyTextColor,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: CustomColors.darkGreyTextColor, width: 0.5),
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimens.dp_25),
              child: Text(
                Strings.pos_3,
                style: TextStyle(
                    fontSize: Dimens.dp_20,
                    color: CustomColors.darkGreyTextColor),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget footerContainer() {
    return Container(
      padding: EdgeInsets.all(Dimens.dp_20),
      color: CustomColors.color422d28,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Strings.copyright_text,
              style:
                  TextStyle(color: CustomColors.white, fontSize: Dimens.dp_12)),
          Container(
            child: Row(
              children: [
                Text(Strings.home.toUpperCase(),
                    style: TextStyle(
                        color: CustomColors.white, fontSize: Dimens.dp_12)),
                SizedBox(width: Dimens.dp_10),
                Text(Strings.about.toUpperCase(),
                    style: TextStyle(
                        color: CustomColors.white, fontSize: Dimens.dp_12)),
                SizedBox(width: Dimens.dp_10),
                Text(Strings.terms_and_conditions.toUpperCase(),
                    style: TextStyle(
                        color: CustomColors.white, fontSize: Dimens.dp_12))
              ],
            ),
          )
        ],
      ),
    );
  }

  int _currentStep = 0;

  Widget stepperHeader() {
    return Column(
      children: [
        Expanded(
          child: Stepper(
            // controlsBuilder: (BuildContext context,
            //     {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
            //   return Row(
            //     children: <Widget>[
            //       /*These below lines are commented to remove the continue and cancel button in stepper*/
            //       // TextButton(
            //       //   onPressed: onStepContinue,
            //       //   child: const Text('CANCEL'),
            //       // ),
            //       // TextButton(
            //       //   onPressed: onStepCancel,
            //       //   child: const Text('CANCEL'),
            //       // ),
            //     ],
            //   );
            // },
            type: StepperType.horizontal,
            physics: ScrollPhysics(),
            currentStep: _currentStep,
            onStepTapped: (step) => tapped(step),
            onStepContinue: continued,
            onStepCancel: cancel,
            steps: <Step>[
              Step(
                title: new Text(''),
                content: Column(
                  children: <Widget>[chooseDeliverySchedule()],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text(""),
                content: Column(
                  children: <Widget>[chooseBreadWidget()],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 1 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: new Text(''),
                content: Column(
                  children: <Widget>[finalSubscription()],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 2 ? StepState.complete : StepState.disabled,
              ),
            ],
          ),
        ),
      ],
    );
  }

  chooseBreadWidget() {
    return Text("Choose bread");
  }

  chooseDeliverySchedule() {
    return Text("Choose delivery schedule");
  }

  finalSubscription() {
    return Text("final subscription page");
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
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
