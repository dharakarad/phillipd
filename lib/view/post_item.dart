import 'package:horizontal_stepper_flutter/horizontal_stepper_flutter.dart';
import 'package:phlipped/commanWidgits/Custom_text.dart';
import 'package:phlipped/commanWidgits/common_text_field.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/utils/assets/icons.dart';

import '../commanWidgits/common_stepar.dart';
import '../commanWidgits/common_take_selectphoto.dart';
import '../service/import_file.dart';
import 'choose_image.dart';
import 'details.dart';

class PostItem extends StatefulWidget {
  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  int currentStap = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Center(
            child: CustomText(
          'Post An Item',
          fontWeight: FontWeight.w600,
          fontSize: 30,
          color: Colors.black,
        )),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const CustomText(
                'Cancel',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xFF009BDF),
              ))
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, left: 15, right: 15),
            child: CommonTakeSelectPhoto(),
          ),
          SizedBox(
            height: 20.h,
          ),
           Row(
            children: [
              const Expanded(
                child: Divider(
                  thickness: 3,
                  color: ColorUtils.grey,
                ),
              ),
              CustomText(
                'Don’t have an image',
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
                color: Colors.black,
              ),
              const Expanded(
                child: Divider(
                  thickness: 3,
                  color: ColorUtils.grey,
                ),
              ),
            ],
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChooseImage(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          CustomText(
                            'Search here',
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    )),
              )),
          Spacer(),
          CommonStaper(
            currentStep: 1,
            steps1: 'photo',
            steps2: 'Details',
            steps3: 'Finish',
            text1: '1',
            text2: '2',
            text3: '3',
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
