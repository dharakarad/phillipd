import '../service/import_file.dart';
import '../utils/assets/common_assets.dart';
import '../utils/assets/icons.dart';
import 'Custom_text.dart';

class CommonTakeSelectPhoto extends StatelessWidget {
  const CommonTakeSelectPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.w,
          color: Color(0xFFE2E2E2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LocalAssets(
                imagePath: IconWidgets.camera,
                height: 30.w,
                scaleSize: 20,
              ),
              SizedBox(
                width: 10.w,
              ),
              const CustomText(
                'Take Photo',
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 20,
              )
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          height: 60.w,
          color: Color(0xFFE2E2E2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LocalAssets(
                imagePath: IconWidgets.gallery,
                height: 30.w,
                scaleSize: 20,
              ),
              SizedBox(
                width: 10.w,
              ),
              const CustomText(
                'Select Photo',
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
