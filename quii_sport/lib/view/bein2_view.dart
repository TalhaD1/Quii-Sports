import 'package:flutter/material.dart';
import 'package:quii_sport/constant/color_constant.dart';
import 'package:quii_sport/constant/text_constant.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Bein2 extends StatefulWidget {
  Bein2({Key? key}) : super(key: key);

  @override
  _Bein2State createState() => _Bein2State();
}

class _Bein2State extends State<Bein2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.renk.arkaPlan,
      body: SafeArea(
        child: WebView(
            initialUrl: TextConstant.text.bein2,
            javascriptMode: JavascriptMode.unrestricted),
      ),
    );
  }
}