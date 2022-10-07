import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../style.dart';
import '../../../home_page.dart';

class WithDraw3 extends StatelessWidget {
  const WithDraw3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xff1A191E), size: 30),
        leadingWidth: 60.w,
        backgroundColor: const Color(0xffF8F8F8),
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
        title: Text('Перевод', style: k1A191Efont20),
      ),
      body: Column(
        children: [
          Text('Подтвердите транзакцию', style: k7D8B9Ffont14),
          SizedBox(height: 80.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                    Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(1, 1),
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: const Color(0xffA1B4D0).withOpacity(0.5)
                  ),
                ],
              ),
              height: 260.h,
              width: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Банк:', style: k7D8B9Ffont14),
                        // Text(bank.bankName, style: kA1B4D0font14)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Номер карты:', style: k7D8B9Ffont14),
                        Text('** 7812', style: kA1B4D0font14)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Сумма перевода:', style: k7D8B9Ffont14),
                        Text('-200’000 ₸ ', style: kA1B4D0font14)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Комиссия:', style: k7D8B9Ffont14),
                        Text('0 ₸', style: kA1B4D0font14)
                      ],
                    ),
                    Divider(
                      color: const Color(0xffE3E8EF),
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Итого:', style: k7D8B9Ffont14),
                        Text('- 200’000 ₸', style: k1A191Efont24)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 218.h),
          Container(
            width: 335.w,
            height: 50.h,
            decoration: const BoxDecoration(
                color: Color(0xff247CFF),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Center(
              child: Text('ПРОДОЛЖИТЬ', style: kFFFFFFfont14),
            ),
          ),
        ],
      ),
    );
  }
}
