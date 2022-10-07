import 'package:github_altin/home_page/1/modal_bottom_sheet/1/top_up2.dart';
import 'package:github_altin/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// Pages
import '../../../home_page.dart';

class TopUp1 extends StatefulWidget {
  const TopUp1({Key? key}) : super(key: key);
  @override
  State<TopUp1> createState() => _TopUp1State();
}

bool _isRadioSelected = false;

class _TopUp1State extends State<TopUp1> {
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
        elevation: 0,
        leadingWidth: 10.w,
        backgroundColor: Colors.white,
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Выберите метод пополнения', style: k7D8B9Ffont14),
            ),
            SizedBox(height: 35.h),

            // First Custom Radio List

            CustomRadioList(
              svgPicture1:
                  SvgPicture.asset('assets/icons/modalBottom/bank.svg'),
              svgPicture2:
                  SvgPicture.asset('assets/icons/modalBottom/bankGreen.svg'),
              checkbox1: Image.asset('assets/icons/modalBottom/checkbox1.png'),
              checkbox2: Image.asset('assets/icons/modalBottom/checkbox2.png'),
              label: 'Банковский перевод',
              subtitle: 'Без комиссии',
              value: true,
              groupValue: _isRadioSelected,
              onChanged: (bool newValue) {
                setState(() {
                  _isRadioSelected = newValue;
                });
              },
              color: Colors.grey,
              colorSelected: Colors.red,
            ),

            // Second Custom Radio List

            CustomRadioList(
              svgPicture1: SvgPicture.asset(
                'assets/icons/modalBottom/kaspi.svg',
              ),
              svgPicture2: SvgPicture.asset(
                'assets/icons/modalBottom/kaspi.svg',
                color: Colors.red,
              ),
              checkbox1: Image.asset('assets/icons/modalBottom/checkbox1.png'),
              checkbox2: Image.asset('assets/icons/modalBottom/checkbox2.png'),
              label: 'Kaspi',
              subtitle: 'Без комиссии',
              color: Colors.grey,
              colorSelected: Colors.red,
              value: false,
              groupValue: _isRadioSelected,
              onChanged: (bool newValueKaspi) {
                setState(() {
                  _isRadioSelected = newValueKaspi;
                });
              },
            ),
            SizedBox(height: 375.h),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TopUp2()));
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
            )
          ],
        ),
      ),
    );
  }
}

class CustomRadioList extends StatelessWidget {
  const CustomRadioList({
    super.key,
    required this.label,
    required this.subtitle,
    required this.groupValue,
    required this.value,
    required this.svgPicture1,
    required this.svgPicture2,
    required this.checkbox1,
    required this.checkbox2,
    required this.onChanged,
    required this.color,
    required this.colorSelected,
  });

  final String label;
  final String subtitle;
  final bool groupValue;
  final bool value;
  final SvgPicture svgPicture1;
  final SvgPicture svgPicture2;
  final Image checkbox1;
  final Image checkbox2;
  final Color color;
  final Color colorSelected;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) {
          onChanged(value);
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        child: Container(
          width: double.maxFinite,
          height: 65.h,
          decoration: const BoxDecoration(
              color: Color(0xffF8F8F8),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                value != groupValue ? svgPicture1 : svgPicture2,
                SizedBox(
                  width: 200.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(label, style: k1A191Efont16),
                      Text(subtitle, style: k8B98AAfont12),
                    ],
                  ),
                ),
                value != groupValue ? checkbox1 : checkbox2
              ],
            ),
          ),
        ),
      ),
    );
  }
}
