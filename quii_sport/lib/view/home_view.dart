import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quii_sport/constant/color_constant.dart';
import 'package:quii_sport/constant/text_constant.dart';
import 'package:quii_sport/view/about_view.dart';
import 'package:quii_sport/view/bein1_view.dart';
import 'package:quii_sport/view/bein2_view.dart';
import 'package:quii_sport/view/fb_view.dart';
import 'package:quii_sport/view/trt_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.renk.arkaPlan,
      appBar: AppBar(
        backgroundColor: ColorConstant.renk.arkaPlan,
        centerTitle: true,
        title: Text(
          TextConstant.text.appBarS,
          style: GoogleFonts.mcLaren(),
        ),
      ),
      drawer: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: ColorConstant.renk.arkaPlan),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.fromLTRB(8.0, 25, 8.0, 8.0),
            children: [
              buildListTileBein(context),
              buildListTileBein2(context),
              buildListTileTrt(context),
              buildListTileFb(context),
              buildListTileAbout(context),
            ],
          ),
        ),
      ),
      body: Center(
        child: buildContainer(width, height),
      ),
    );
  }

//----------------ListTiles----------------------//
  ListTile buildListTileAbout(BuildContext context) {
    return ListTile(
      title: Text(
        'Hakkında-İletişim',
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => About()),
        );
      },
    );
  }

  ListTile buildListTileFb(BuildContext context) {
    return ListTile(
      title: Text(
        'FBTV',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Fb(),
          ),
        );
      },
    );
  }

  ListTile buildListTileTrt(BuildContext context) {
    return ListTile(
      title: Text(
        'TRT Spor',
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Trt()),
        );
      },
    );
  }

  ListTile buildListTileBein2(BuildContext context) {
    return ListTile(
      title: Text(
        'Bein Sport (Sunucu-2)',
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bein2()),
        );
      },
    );
  }

  ListTile buildListTileBein(BuildContext context) {
    return ListTile(
      title: Text(
        'Bein Sport (Sunucu-1)',
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bein1()),
        );
      },
    );
  }

//----------------Design----------------------//
  Padding buildContainer(double width, double height) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: width,
        height: height,
        child: Column(
          children: [
            buildText(),
            buildImage(),
          ],
        ),
      ),
    );
  }

  Padding buildText() {
    return Padding(
      padding: EdgeInsets.only(top: 50),
      child: Text(
        TextConstant.text.home,
        style: GoogleFonts.teko(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  Padding buildImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Image.asset('assets/images/image.png'),
    );
  }
}
