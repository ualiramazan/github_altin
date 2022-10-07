import 'package:github_altin/home_page/1/modal_bottom_sheet/1/top_up3.dart';
import 'package:github_altin/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/widgets.dart';

// Pages
import 'package:github_altin/home_page/1/modal_bottom_sheet/1/top_up1.dart';
import '../../../../main.dart';
import '../../../home_page.dart';
import 'package:github_altin/model/bank_list.dart';

class TopUp2 extends StatelessWidget {
  TopUp2({Key? key}) : super(key: key);

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
                  MaterialPageRoute(builder: (context) => const TopUp1()));
            },
            child: const Icon(MyIcons.back)),
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            Text('Выберите Банк, с которого будет произведено \nпополнение',
                textAlign: TextAlign.center, style: k7D8B9Ffont14),
            SizedBox(height: 15.h),
            Container(
              height: 40.h,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Color(0xffF2F4F5),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 7.h),
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search), border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 25.h),

            /// List View

            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: 8.h),
                scrollDirection: Axis.vertical,
                itemCount: bankList.length,
                itemBuilder: (BuildContext context, int index) {
                  Bank bank = bankList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TopUp3(bank)));
                    },
                    child: Container(
                      height: 65.h,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                                'assets/icons/modalBottom/blueBank.svg'),
                            SizedBox(
                              width: 200.w,
                              child: Text(bank.bankName, style: k1A191Efont16),
                            ),
                            SvgPicture.asset(
                                'assets/icons/modalBottom/chevron.svg',
                                color: const Color(0xff000000)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30.h)
          ],
        ),
      ),
    );
  }
}
