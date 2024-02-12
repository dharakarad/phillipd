import 'package:horizontal_stepper_flutter/horizontal_stepper_flutter.dart';

import '../service/import_file.dart';

import 'custom_btn.dart';

class CommonStaper4 extends StatelessWidget {
  const CommonStaper4(
      {super.key,
      required this.currentStep,
      required this.onTap,
      required this.title,
      this.steps1,
      this.steps2,
      this.steps3,
      this.steps4,
      this.text1,
      this.text2,
      this.text3,
      this.text4});

  final int currentStep;
  final String title;
  final Function onTap;
  final String? steps1;
  final String? steps2;
  final String? steps3;
  final String? steps4;
  final String? text1;
  final String? text2;
  final String? text3;
  final String? text4;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 160.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 5),
          ]),
      child: Column(
        children: [
          FlutterHorizontalStepper(
            steps: [
              steps1 ?? '',
              steps2 ?? '',
              steps3 ?? '',
              steps4 ?? '',
            ],
            radius: 45,
            currentStep: currentStep,
            child: [
              Text(text1 ?? ''),
              Text(text2 ?? ''),
              Text(text3 ?? ''),
              Text(text4 ?? ''),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: CustomButton(
                title: title,
                onTap: () {
                  onTap();
                },
              )),
        ],
      ),
    );
  }
}
