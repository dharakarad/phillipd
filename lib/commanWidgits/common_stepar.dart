import 'package:horizontal_stepper_flutter/horizontal_stepper_flutter.dart';

import '../service/import_file.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart' as ctn;

class CommonStaper extends StatelessWidget {
  const CommonStaper(
      {super.key,
      required this.currentStep,
      this.onTap,
      this.customButton,
      this.tital});
  final int currentStep;
  final String? tital;
  final Function? onTap;
  final Widget? customButton;

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
            steps: const [
              "Photo",
              "Details",
              "Finish",
            ],
            radius: 45,
            currentStep: currentStep,
            child: [Text('1'), Text('2'), Text('3')],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: ctn.CustomButton(),
          )
        ],
      ),
    );
  }
}
