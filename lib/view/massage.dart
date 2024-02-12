import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/commanWidgits/Custom_text.dart';
import 'package:phlipped/commanWidgits/common_text_field.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/utils/assets/images.dart';
import 'package:phlipped/view/chat.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  List<Map<String, dynamic>> data = [
    {
      'image': ImageWidgits.elipse10,
      'title': 'Cameron Williamson',
      'subTitle': 'Amet minim mollit non deserunt.',
      'trailin': '10:00 PM',
      'subtitle2': '1'
    },
    {
      'image': ImageWidgits.elipse11,
      'title': 'Jenny Wilson',
      'subTitle': 'Velit officia consequat duis enim velit mollit.',
      'trailin': 'Yesterday',
      'subtitle2': '2'
    },
    {
      'image': ImageWidgits.elipse12,
      'title': 'Bessie Cooper',
      'subTitle': '',
      'trailin': '10/2/12',
      'subtitle2': '3'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: CustomText(
          'Message',
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 25.sp,
        ),
      ),
      body: Column(
        children: [
          CommonTextField(
            hintText: 'Search here',
            pIcon: Icon(Icons.search),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Chat(),
                              ));
                        }
                      },
                      child: ListTile(
                        leading: LocalAssets(imagePath: data[index]['image']),
                        title: CustomText(
                          data[index]['title'],
                          color: Colors.black,
                        ),
                        subtitle: CustomText(
                          data[index]['subTitle'],
                          color: Colors.black,
                          fontSize: 10.sp,
                        ),
                        trailing: CustomText(
                          data[index]['trailin'],
                          color: Colors.black,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 10.h,
                      thickness: 1,
                    );
                  },
                  itemCount: data.length)),
        ],
      ),
    ));
  }
}
