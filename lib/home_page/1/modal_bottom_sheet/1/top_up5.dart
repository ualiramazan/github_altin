import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../style.dart';
import '../../../home_page.dart';

class TopUp5 extends StatelessWidget {
  const TopUp5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
        backgroundColor: const Color(0xffF8F8F8),
        appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Color(0xff1A191E), size: 30),
          leadingWidth: 60.w,
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: SizedBox(
                height: 23.h,
                width: 22.w,
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/modalBottom/close.svg',
                    height: 20.h,
                  ),
                ),
              ),
            ),
            SizedBox(width: 27.w),
          ],
          title: Text('Пополнение', style: k1A191Efont20),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffE3E8EF)
                    )
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 220.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Банк:', style: kA1B4D0font14),
                                Text('АО Банк ЦентрКредит',
                                    style: k7D8B9Ffont14),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Отправитель:', style: kA1B4D0font14),
                                Text('Камалов К. Б.', style: k7D8B9Ffont14),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Дата и время:', style: kA1B4D0font14),
                                Text('22/09/2022   21:41',
                                    style: k7D8B9Ffont14),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Статус:', style: kA1B4D0font14),
                                Text('Пополнение в обработке',
                                    style: k7D8B9Ffont14),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Сумма пополнения:',
                                    style: kA1B4D0font14),
                                Text('+ 500’000 ₸ ', style: k7D8B9Ffont14),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Комиссия:', style: kA1B4D0font14),
                                Text('0 ₸ ', style: k7D8B9Ffont14),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}


