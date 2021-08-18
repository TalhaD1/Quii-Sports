import 'package:flutter/material.dart';
import 'package:quii_sport/constant/color_constant.dart';
import 'package:quii_sport/constant/text_constant.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Bein1 extends StatefulWidget {
  Bein1({Key? key}) : super(key: key);

  @override
  _Bein1State createState() => _Bein1State();
}

class _Bein1State extends State<Bein1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.renk.arkaPlan,
      body: SafeArea(
        child: WebView(
          onWebResourceError: (WebResourceError error) {},
          initialUrl: TextConstant.text.bein1,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}