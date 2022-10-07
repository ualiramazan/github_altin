import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
// Pages
import '../../../../../style.dart';
import 'package:github_altin/home_page/1/containers/sell/sell2.dart';

class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
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
        padding: EdgeInsets.only(top: 20.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Баланс золота', style: kA1B4D0font15),
                      Text('99,41 г', style: k8B98AAfont15),
                      Divider(
                        height: 40,
                        thickness: 0.5,
                        color: const Color(0xffA1B4D0).withOpacity(0.25),
                      ),
                      Text('Денежный резерв', style: kA1B4D0font15),
                      Text('941 879,59 ₸', style: k8B98AAfont15),
                    ],
                  ),
                  SizedBox(
                      height: 140.h,
                      width: 140.w,
                      child: Image.asset('assets/icons/1Page/money_screen.png'))
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              color: Colors.white,
              height: 138.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Введите сумму', style: k576375font16),
                    ),
                    SizedBox(
                      height: 60.h,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    hintText: '0 ₸',
                                    hintStyle: k343434font30,
                                    border: InputBorder.none),
                                keyboardType: TextInputType.number,
                                style: k343434font30,
                              )),
                          VerticalDivider(
                            width: 10.w,
                            thickness: 2,
                            color: const Color(0xffA1B4D0).withOpacity(0.25),
                            indent: 15,
                            endIndent: 15,
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Text('0 г', style: kA1B4D0font14),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Минимальная сумма покупки 5 000 ₸',
                          style: kA1B4D0font13),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Sell2()));
                  },
                  child: Container(
                    width: 335.w,
                    height: 50.h,
                    decoration: const BoxDecoration(
                        color: Color(0xff247CFF),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Center(
                      child: Text('ПРОДАТЬ', style: kFFFFFFfont14),
                    ),
                  ),
                ),
              ),
            ),
            KeyboardVisibilityBuilder(
              builder: (context, isKeyboardVisible) {
                if (isKeyboardVisible) {
                  return Container(
                    height: 20,
                    alignment: Alignment.bottomCenter,
                  );
                }
                return Container(
                  height: 80.h,
                  alignment: Alignment.bottomCenter,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
