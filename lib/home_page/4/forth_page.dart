import 'package:flutter/material.dart';

import '../../style.dart';

class ForthPage extends StatelessWidget {
  const ForthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBFBFB),
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(color: Color(0xffF2F4F5))),
        backgroundColor: Colors.white,
        title: Text('Настройки', style: k1A191Efont20),
        centerTitle: true,
        elevation: 1,
      ),
    );
  }
}
