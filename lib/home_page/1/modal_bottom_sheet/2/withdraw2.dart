import 'package:github_altin/home_page/1/modal_bottom_sheet/2/withdraw3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

// Pages
import '../../../../main.dart';
import '../../../../style.dart';
import '../../../home_page.dart';
import 'package:github_altin/home_page/1/modal_bottom_sheet/2/withdraw1.dart';

class WithDraw2 extends StatelessWidget {
  const WithDraw2({Key? key}) : super(key: key);

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WithDraw1()));
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
        title: Text('Перевод', style: k1A191Efont20),
      ),
      body: Column(
        children: [
          Container(
              height: 55.h,
              width: double.maxFinite,
              color: const Color(0xffF8F8F8),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Баланс денежного резерва:', style: k7D8B9Ffont14),
                    Text('379’000.00 ₸', style: k1A191Efont16)
                  ],
                ),
              )),
          Container(
            height: 120.h,
            width: double.maxFinite,
            color: const Color(0xffF8F8F8),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
              child: Container(
                alignment: Alignment.topCenter,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Введите номер карты получателя',
                    labelStyle: k7D8B9Ffont14,
                    suffixIcon:
                        const Icon(ScanIcon.scan, color: Color(0xff7D8B9F)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color(0xffF2B234), width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xffCCD5E2),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
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
                            builder: (context) => WithDraw3()));
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
                    height: 80.h,
                    child: Container(
                      alignment: const Alignment(0, -0.3),
                    ),
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
