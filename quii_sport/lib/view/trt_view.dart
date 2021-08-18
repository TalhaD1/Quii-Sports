import 'package:flutter/material.dart';
import 'package:quii_sport/constant/color_constant.dart';
import 'package:quii_sport/constant/text_constant.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Trt extends StatefulWidget {
  Trt({Key? key}) : super(key: key);

  @override
  _TrtState createState() => _TrtState();
}

class _TrtState extends State<Trt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.renk.arkaPlan,
      body: SafeArea(
        child: WebView(
          initialUrl: TextConstant.text.trt,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}