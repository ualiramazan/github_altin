import 'package:github_altin/style.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBFBFB),
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(color: Color(0xffF2F4F5))),
        backgroundColor: Colors.white,
        title: Text('Акции', style: k1A191Efont20),
        centerTitle: true,
        elevation: 1,
      ),
    );
  }
}
