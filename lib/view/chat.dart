import 'package:phlipped/commanWidgits/Custom_text.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/utils/assets/icons.dart';
import 'package:phlipped/utils/assets/images.dart';

import '../service/import_file.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: LocalAssets(
          height: 45.w,
          imagePath: ImageWidgits.elipse10,
          fit: BoxFit.fill,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 100, top: 10),
            child: Column(
              children: [
                CustomText(
                  'Cameron Williamson',
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 90),
                  child: CustomText(
                    'Online',
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: CustomText(
                    'Amet minim mollit non deserunt will not.',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  '10.00PM',
                  color: Colors.black,
                )),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF009BDF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: CustomText(
                    'Amet minim mollit ',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: CustomText(
                  '10.00PM',
                  color: Colors.black,
                )),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: CustomText(
                    'Amet minim mollit non deserunt will not.',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  '10.00PM',
                  color: Colors.black,
                )),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF009BDF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: CustomText(
                    'Amet minim mollit ',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: CustomText(
                  '10.00PM',
                  color: Colors.black,
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    LocalAssets(imagePath: IconWidgets.camera),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 250.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: CustomText('Write Message'),
                        ),
                      ),
                    ),
                    LocalAssets(imagePath: IconWidgets.send),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
