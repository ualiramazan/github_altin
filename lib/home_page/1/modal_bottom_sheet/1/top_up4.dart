import 'package:github_altin/home_page/1/modal_bottom_sheet/1/top_up5.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Pages
import '../../../home_page.dart';
import 'package:github_altin/style.dart';
import '../../../../model/bank_list.dart';

class TopUp4 extends StatelessWidget {
  const TopUp4({Key? key, required this.bank}) : super(key: key);
  final Bank bank;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xffF8F8F8),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xff1A191E), size: 30),
        leadingWidth: 60.w,
        backgroundColor: Color(0xffF8F8F8),
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
      body: Column(
        children: [
          Text('Подтвердите транзакцию', style: k7D8B9Ffont14),
          SizedBox(height: 80.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(1, 1),
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: const Color(0xffA1B4D0).withOpacity(0.5)),
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
                        Text('Банк:', style: kA1B4D0font14),
                        Text(bank.bankName, style: k7D8B9Ffont14)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Отправитель:', style: kA1B4D0font14),
                        Text('Камалов К. Б.', style: k7D8B9Ffont14)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Сумма пополнения:', style: kA1B4D0font14),
                        Text('+ 500’000 ₸', style: k7D8B9Ffont14)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Комиссия:', style: kA1B4D0font14),
                        Text('0 ₸', style: k7D8B9Ffont14)
                      ],
                    ),
                    Divider(
                      color: const Color(0xffE3E8EF),
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Итого:', style: kA1B4D0font14),
                        Text('+ 500’000 ₸ ', style: k7D8B9Ffont14)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 218.h),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TopUp5()));
            },
            child: Container(
              width: 335.w,
              height: 50.h,
              decoration: const BoxDecoration(
                  color: Color(0xff247CFF),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Center(
                child: Text('ПРОДОЛЖИТЬ', style: kFFFFFFfont14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
