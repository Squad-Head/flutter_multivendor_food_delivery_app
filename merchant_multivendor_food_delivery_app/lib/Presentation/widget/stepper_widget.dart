import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stepper(
        controlsBuilder: (context, details) => Container(),
        currentStep: 1,
        steps: const [
          Step(
            isActive: true,
            title: Text('Rose Garden'),
            subtitle: Text('Picup Point'),
            content: SizedBox(),
          ),
          Step(
            isActive: true,
            title: Text('Anabil 34/3, Ukilpara, Sunamgaj'),
            subtitle: Text('Drop Point Point'),
            content: SizedBox(),
          ),
        ],
      ),
    );
  }
}
