import 'package:github_altin/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';

class Graph extends StatelessWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color(0xff576375),
        ),
        centerTitle: true,
        title: Text('Продажа золота', style: k343434font20),
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20.w), // Do not delete
                  Center(
                      child: Text('15 Марта 2022 г', style: kA1B4D0font14)),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset(
                        'assets/icons/1Page/calendar.svg'),
                  )
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('RM 32,500 ₸/g', style: k474747font30),
                    Row(
                      children: [
                        SvgPicture.asset(
                            'assets/icons/1Page/miniArrow.svg'),
                        Text(' +1,566 (+1,37%)', style: k17C59Bfont12),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50.h),

            /// Line Chart

            SizedBox(
              height: 248.h,
              width: double.maxFinite,
              child: LineChart(
                LineChartData(
                    minX: 0,
                    maxX: 30,
                    minY: 0,
                    maxY: 20,
                    gridData: FlGridData(
                      show: false,
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    titlesData: FlTitlesData(
                      show: false,
                    ),
                    lineBarsData: [
                      LineChartBarData(
                        isCurved: true,
                        color: const Color(0xffEEA313),
                        dotData: FlDotData(
                          show: false,
                        ),
                        barWidth: 3,
                        spots: const [
                          FlSpot(0, 3),
                          FlSpot(3, 4.5),
                          FlSpot(4, 3.6),
                          FlSpot(6, 8),
                          FlSpot(7, 6),
                          FlSpot(9, 9.5),
                          FlSpot(11, 8.5),
                          FlSpot(19, 14),
                          FlSpot(21, 12.5),
                          FlSpot(25, 16),
                          FlSpot(30, 15.4)
                        ],
                        belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0xffFFA800).withOpacity(0.1),
                                  const Color(0xff83C3FF).withOpacity(0)
                                ])),
                      )
                    ]),
              ),
            ),
            SizedBox(height: 40.h),

            /// Months Years and Days

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// 1 DAY

                Container(
                  height: 28.h,
                  width: 47.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff2E6FA7).withOpacity(0.2)),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(14))),
                  child: Center(
                    child: Text('1 D', style: k696969font15),
                  ),
                ),

                /// 1 WEEK

                Container(
                  height: 28.h,
                  width: 47.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff2E6FA7).withOpacity(0.2)),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(14))),
                  child: Center(
                    child: Text('1 W', style: k696969font15),
                  ),
                ),

                /// 1 MONTH

                Container(
                  height: 28.h,
                  width: 47.w,
                  decoration: const BoxDecoration(
                      color: Color(0xff00B2FF),
                      borderRadius:
                      BorderRadius.all(Radius.circular(14))),
                  child: Center(
                    child: Text('1 M', style: kFEFEFEfont15),
                  ),
                ),

                /// 3 MONTHS

                Container(
                  height: 28.h,
                  width: 47.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff2E6FA7).withOpacity(0.2)),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(14))),
                  child: Center(
                    child: Text('3 M', style: k696969font15),
                  ),
                ),

                /// 1 YEAR

                Container(
                  height: 28.h,
                  width: 47.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff2E6FA7).withOpacity(0.2)),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(14))),
                  child: Center(
                    child: Text('1 Y', style: k696969font15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 57.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50.h,
                  width: 154.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffB3C9E9),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Center(
                    child: Text('Продать', style: k0C4471font14),
                  ),
                ),
                Container(
                  height: 50.h,
                  width: 154.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff247CFF),
                    ),
                    color: const Color(0xff247CFF),
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Center(
                    child: Text('Купить', style: kFFFFFFfont14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}