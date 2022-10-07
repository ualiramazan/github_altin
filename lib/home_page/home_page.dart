import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../model/bank_list.dart';
import '1/first_page.dart';
import '2/second_page.dart';
import '3/third_page.dart';
import '4/forth_page.dart';

// Pages

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const FirstPage(),
    const SecondPage(),
    const ThirdPage(),
    const ForthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 85.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color(0xffCCD2E3),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 0)),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            /// First Icon

            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: pageIndex == 0
                  ? SizedBox(
                  height: 45.h,
                  width: 60.w,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/bottomNav/iconPicked1.svg',
                      height: 45.h,
                    ),
                  ))
                  : Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                    height: 45.h,
                    width: 60.w,
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/bottomNav/iconUnpicked1.svg',
                        height: 45.h,
                      ),
                    )),
              ),
            ),

            /// Second Icon

            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: pageIndex == 1
                  ? SizedBox(
                  height: 45.h,
                  width: 60.w,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/bottomNav/iconPicked2.svg',
                      height: 45.h,
                    ),
                  ))
                  : Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                    height: 45.h,
                    width: 60.w,
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/bottomNav/iconUnpicked2.svg',
                        height: 45.h,
                      ),
                    )),
              ),
            ),

            /// Third Icon

            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: pageIndex == 2
                  ? SizedBox(
                  height: 45.h,
                  width: 60.w,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/bottomNav/iconPicked3.svg',
                      height: 45.h,
                    ),
                  ))
                  : Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                    height: 45.h,
                    width: 60.w,
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/bottomNav/iconUnpicked3.svg',
                        height: 45.h,
                      ),
                    )),
              ),
            ),

            /// Forth Icon

            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              child: pageIndex == 3
                  ? SizedBox(
                  height: 45.h,
                  width: 60.w,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/bottomNav/iconPicked4.svg',
                      height: 45.h,
                    ),
                  ))
                  : Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                    height: 45.h,
                    width: 60.w,
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/bottomNav/iconUnpicked4.svg',
                        height: 45.h,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}