import 'package:github_altin/model/bank_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
// Pages
import 'package:github_altin/home_page/1/modal_bottom_sheet/1/top_up1.dart';
import 'package:github_altin/home_page/1/modal_bottom_sheet/2/withdraw1.dart';
import 'package:github_altin/style.dart';

class ModalBottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 375.h,
      width: 375.w,
      decoration: const BoxDecoration(
          color: Color(0xffF9F9F9),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SizedBox(
          height: 275.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Денежный резерв', style: k000000font18),
                  SizedBox(height: 6.h),
                  Text('Выберите операцию', style: kA1B4D0font14),
                ],
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TopUp1()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/modalBottom/first_wallet.svg',
                          height: 30.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 45.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Пополнить', style: k576375font18),
                              Text('Вывод денежных средств',
                                  style: kA1B4D0font12)
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: SvgPicture.asset(
                          'assets/icons/modalBottom/chevron.svg'),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Color(0xffA1B4D0),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const WithDraw1()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/modalBottom/second_wallet.svg',
                          height: 30.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 45.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Снять', style: k576375font18),
                              Text(
                                'Вывод денежных средств',
                                style: kA1B4D0font12,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: SvgPicture.asset(
                          'assets/icons/modalBottom/chevron.svg'),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Color(0xffA1B4D0),
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(left: 6.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/modalBottom/third_wallet.svg',
                            height: 30.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 45.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Транзакции',
                                    style: k576375font18),
                                Text('История транзакций', style: kA1B4D0font12)
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: SvgPicture.asset(
                            'assets/icons/modalBottom/chevron.svg'),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Color(0xffA1B4D0),
              ),
              SizedBox(
                height: 35.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
