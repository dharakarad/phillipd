import 'package:phlipped/commanWidgits/common_stepar.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart' as ctn;
import '../commanWidgits/Custom_text.dart';
import '../commanWidgits/custom_btn.dart';
import '../service/import_file.dart';
import '../utils/assets/images.dart';
import 'details.dart';

class ChooseImage extends StatefulWidget {
  @override
  State<ChooseImage> createState() => _ChooseImageState();
}

class _ChooseImageState extends State<ChooseImage> {
  List<String> data = [
    ImageWidgits.flower1,
    ImageWidgits.flower2,
    ImageWidgits.flower3,
    ImageWidgits.flower3,
    ImageWidgits.flower2,
    ImageWidgits.flower1,
    ImageWidgits.flower1,
    ImageWidgits.flower2,
    ImageWidgits.flower3,
    ImageWidgits.flower1,
    ImageWidgits.flower2,
    ImageWidgits.flower3,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Center(
            child: CustomText(
          'Choose Image',
          fontWeight: FontWeight.w600,
          fontSize: 25.sp,
          color: Colors.black,
        )),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: CustomText(
                'Cancel',
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
                color: Color(0xFF009BDF),
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0.0,
                  childAspectRatio: 1 / 1.1,
                  mainAxisSpacing: 0.0),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 105.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(
                                0.3,
                              ),
                              spreadRadius: 2,
                              blurRadius: 0.3)
                        ]),
                    child: LocalAssets(
                      imagePath: data[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          CommonStaper(
            currentStep: 1,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(),
                  ));
            },
            title: 'Next',
          ),
        ],
      ),
    ));
  }
}
