import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phlipped/service/import_file.dart';
import 'package:phlipped/view/address.dart';
import 'package:phlipped/view/authentication/change_password.dart';
import 'package:phlipped/view/edit_profile.dart';
import 'package:phlipped/view/history.dart';
import 'package:phlipped/view/listing.dart';
import 'package:phlipped/utils/color_util.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List<Map<String, dynamic>> tab = [
    {'icon': 'assets/icon/ic_location.svg', 'tital': 'Address'},
    {'icon': 'assets/icon/ic_list.svg', 'tital': 'Listing'},
    {'icon': 'assets/icon/ic_password.svg', 'tital': 'Change Password'},
    {'icon': 'assets/icon/ic_history.svg', 'tital': 'History'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        gradient: ColorUtils.appGrediant,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding: EdgeInsets.only(top: 58, bottom: 50),
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage(('assets/images/Ellipse 2.png')),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text(
                            'Jerome Ball',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                          const Text(
                            'jeromanbell123@gmail.com',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          )
                        ],
                      ),
                    )),
                Positioned(
                  bottom: 0,
                  //bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfile(),
                            ));
                      },
                      child: Container(
                        height: 50.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  blurRadius: 1,
                                  spreadRadius: 2)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icon/ic_profile.svg',
                                height: 20.h,
                                width: 20.w,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Edit Profile',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tab.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      left: 29,
                      right: 29,
                    ),
                    child: InkWell(
                      onTap: () {
                        if (tab[index]['tital'] == "Address") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Address(),
                              ));
                        } else if (tab[index]['tital'] == "Change Password") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChangePassword()));
                        } else if (tab[index]['tital'] == "Listing") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Listing()));
                        } else if (tab[index]['tital'] == "History") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => History()));
                        }
                      },
                      child: Container(
                        height: 50.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  blurRadius: 1,
                                  spreadRadius: 2)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                tab[index]['icon'],
                                height: 20.h,
                                width: 20.w,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                tab[index]['tital'],
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
