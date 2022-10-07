import 'package:github_altin/home_page/1/modal_bottom_sheet/1/top_up4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

// Pages
import 'package:github_altin/home_page/1/modal_bottom_sheet/1/top_up2.dart';
import '../../../../main.dart';
import '../../../../model/bank_list.dart';
import '../../../../style.dart';
import '../../../home_page.dart';

class TopUp3 extends StatelessWidget {
  final Bank bank;
  TopUp3(this.bank);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xffF8F8F8),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xff1A191E), size: 20),
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TopUp2()));
            },
            child: const Icon(MyIcons.back)),
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
        title: Text('Пополнение', style: k1A191Efont20),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 220.h,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xffF8F8F8),
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffE3E8EF)
                )
              )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Text('Наименование Банка', style: k7D8B9Ffont14),
                  Text(bank.bankName, style: kA1B4D0font14),
                  SizedBox(height: 15.h),
                  Text('ФИО*', style: k7D8B9Ffont14),
                  Text('Камалов Касым Болатулы', style: kA1B4D0font14),
                  SizedBox(height: 15.h),
                  Expanded(
                    child: Text(
                        '*  Денежные средства должны быть отправлены от\n'
                        'Вашего имени, в противном случае они не будут\n'
                        'зачислены',
                        style: k8B98AAfont13),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Введите сумму пополнения', style: k1A191Efont16)),
          ),
          SizedBox(
            height: 80.h,
            width: double.maxFinite,
            child: Center(
              child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: '0 ₸',
                      hintStyle: k343434font30,
                      border: InputBorder.none),
                  keyboardType: TextInputType.number,
                  style: k343434font30),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TopUp4(bank: bank)));
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
              ),
            ),
          ),
          KeyboardVisibilityBuilder(
            builder: (context, isKeyboardVisible) {
              if (!isKeyboardVisible) {
                return GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 85.h,
                  ),
                );
              }
              return SizedBox(height: 25.h);
            },
          ),
        ],
      ),
    );
  }
}
