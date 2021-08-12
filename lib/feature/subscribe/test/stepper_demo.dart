import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                controlsBuilder: (BuildContext context,
                    {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
                  return Row(
                    children: <Widget>[
                      /*These below lines are commented to remove the continue and cancel button in stepper*/
                      // TextButton(
                      //   onPressed: onStepContinue,
                      //   child: const Text('CANCEL'),
                      // ),
                      // TextButton(
                      //   onPressed: onStepCancel,
                      //   child: const Text('CANCEL'),
                      // ),
                    ],
                  );
                },
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
                      children: <Widget>[
                        chooseDeliverySchedule()
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: Text(""),
                    content: Column(
                      children: <Widget>[
                        chooseBreadWidget()
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text(''),
                    content: Column(
                      children: <Widget>[
                        finalSubscription()
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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

  chooseBreadWidget() {
    return Text("Choose bread");
  }

  chooseDeliverySchedule() {
    return Text("Choose delivery schedule");
  }

  finalSubscription() {
    return Text("final subscription page");
  }
}
