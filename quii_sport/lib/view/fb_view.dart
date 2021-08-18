import 'package:flutter/material.dart';
import 'package:quii_sport/constant/color_constant.dart';
import 'package:quii_sport/constant/text_constant.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Fb extends StatefulWidget {
  Fb({Key? key}) : super(key: key);

  @override
  _FbState createState() => _FbState();
}

class _FbState extends State<Fb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.renk.arkaPlan,
      body: SafeArea(
        child: WebView(
          initialUrl: TextConstant.text.fb,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
