import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../style.dart';

class Sell2 extends StatelessWidget {
  const Sell2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color(0xff576375),
        ),
        centerTitle: true,
        title: Text('Подтверждение сделки', style: k343434font20),
        elevation: 1,
      ),
      body: Column(
        children: [
          SizedBox(height: 40.h),
          Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 40.h,
                      width: 335.w,
                      color: const Color(0xffF9F9F9),
                    ),
                    Container(
                        height: 300.h,
                        width: 335.w,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(3, 3),
                                blurRadius: 3,
                                spreadRadius: 3,
                                color: Color(0xffD9D9D9))
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Сумма сделки', style: k576375font16),
                                  Text('-15000 ₸', style: k576375font16)
                                ],
                              ),
                              Divider(
                                  height: 10.h, color: const Color(0xffE3E8EF)),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Кол-во золота', style: k576375font16),
                                  Text('+0.6 г', style: k576375font16)
                                ],
                              ),
                              Divider(
                                  height: 10.h, color: const Color(0xffE3E8EF)),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Комиссия', style: kA1B4D0font15),
                                  Text('0 ₸', style: kA1B4D0font15)
                                ],
                              ),
                              Divider(
                                  height: 10.h, color: const Color(0xffE3E8EF)),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 42,
                  width: 80,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, -1),
                          blurRadius: 0.5,
                          spreadRadius: 0,
                          color: Color(0xffD9D9D9))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: SvgPicture.asset(
                          'assets/icons/1Page/gold_minimalism.svg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 180.h),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 335.w,
              height: 50.h,
              decoration: const BoxDecoration(
                  color: Color(0xff247CFF),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Center(
                child: Text('ПРОДАТЬ ЗОЛОТО', style: kFFFFFFfont14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
