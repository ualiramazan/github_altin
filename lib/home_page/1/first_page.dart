import 'package:github_altin/home_page/1/containers/buy/buy.dart';
import 'package:github_altin/home_page/1/containers/graph/graph.dart';
import 'package:github_altin/home_page/1/containers/sell/sell.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../style.dart';
import 'modal_bottom_sheet/modal_bottom.dart';
import 'package:flutter_svg/svg.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Do not change App Bar!!!

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: const Color(0xff448BF5),
          elevation: 0,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        ),
      ),
      body: Column(
        children: [
          const BlueCard(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Баланс золота:', style: k576375font16)),
                ),
                SizedBox(
                  height: 90.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: '100,01', style: k343434font42),
                                TextSpan(text: ' г', style: k8B98AAfont15)
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/1Page/miniArrow.svg'),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: ' +1,566 (+1,37%)  ',
                                        style: k17C59Bfont12),
                                    TextSpan(
                                        text: 'Сегодня', style: kA1B4D0font12)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset('assets/icons/1Page/goldBalance.png',
                          height: 75.h)
                    ],
                  ),
                ),
                SizedBox(height: 15.h),

                // Containers

                SizedBox(
                  height: 230.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 74.h,
                            width: 155.w,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Graph()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color(0xffE7E7E7)),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color(0xffE7E7E7),
                                        blurRadius: 2.0,
                                        spreadRadius: 0.5,
                                        offset: Offset(2, 2))
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      'assets/icons/1Page/arrowGraph.png',
                                      height: 35.h,
                                    ),
                                    Text(
                                      'График \n цен на \n золото',
                                      style: k343434font15,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Sell()));
                            },
                            child: SizedBox(
                              height: 134.h,
                              width: 155.w,
                              child: Container(
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color(0xffECECEC)),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color(0xffE7E7E7),
                                        blurRadius: 2.0,
                                        spreadRadius: 1,
                                        offset: Offset(2, 2))
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.w, top: 20.h, bottom: 15.h),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/icons/1Page/goldSell.png',
                                        height: 35.h,
                                      ),
                                      Text('Продать', style: k343434font25)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Buy()));
                        },
                        child: SizedBox(
                          width: 155.w,
                          height: 232.h,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: const Color(0xffE7E7E7)),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color(0xffE7E7E7),
                                      blurRadius: 2.0,
                                      spreadRadius: 1,
                                      offset: Offset(2, 2))
                                ]),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.w, top: 25.h),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/icons/1Page/goldAdd.png',
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text('Купить', style: k343434font25),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Expanded(
                                    child: Text(
                                        'Покупка золота \n осуществляется из \n Денежного резерва',
                                        style: kA1B4D0font13),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),

                /// Current Price Gold

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Цена золото за грамм', style: k576375font16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icons/1Page/gold1Gram.png',
                            height: 20.h),
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Продажа', style: kA1B4D0font15),
                                  SizedBox(height: 5.h),
                                  Text('24 600 ₸', style: k8B98AAfont15)
                                ],
                              ),
                              VerticalDivider(
                                width: 30.w,
                                color: const Color(0xffA1B4D0).withOpacity(0.5),
                                thickness: 1,
                                indent: 5,
                                endIndent: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Покупка', style: kA1B4D0font15),
                                  SizedBox(height: 5.h),
                                  Text('25 000 ₸', style: k8B98AAfont15)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BlueCard extends StatelessWidget {
  const BlueCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195.h,
      width: double.maxFinite,
      decoration: const BoxDecoration(
          color: Color(0xff448BF5),
          boxShadow: [
            BoxShadow(
                color: Color(0xffCCD2E3),
                blurRadius: 3,
                spreadRadius: 3,
                offset: Offset(0, 2))
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SvgPicture.asset(
                //   'assets/icons/1Page/account.svg',
                //   height: 30.h,
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Здравствуйте, ',
                            style: kFFFFFFFfont20opacity),
                        TextSpan(text: 'Қасым!', style: kFFFFFFFfont20)
                      ],
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/1Page/notification.svg',
                  height: 35.h,
                )
              ],
            ),
            SizedBox(height: 35.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Денежный резерв:', style: kFFFFFFfont16),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text('941 879,59 ₸', style: kFFFFFFfont30),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => ModalBottom(),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                      );
                    },
                    child: Icon(
                      Icons.add_circle,
                      size: 60.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
