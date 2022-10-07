import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}

// Icons

class MyIcons {
  MyIcons._();

  static const _kFontFam = 'MyIcons';
  static const String? _kFontPkg = null;

  static const IconData back =
  IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

class ScanIcon {
  ScanIcon._();

  static const _kFontFam = 'ScanIcon';
  static const String? _kFontPkg = null;

  static const IconData scan = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}



