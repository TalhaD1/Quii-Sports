import 'package:flutter/material.dart';
import 'package:quii_sport/constant/color_constant.dart';

class About extends StatefulWidget {
  About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorConstant.renk.arkaPlan,
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                ),
                build1(),
                build2(),
                build3(),
                buildIletisim(),
                buildMail()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded build1() {
    return Expanded(
      child: Text(
        '1-Bu Mobil Uygulama Tamamen Tasarım amaçlıdır',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }

  Expanded build2() {
    return Expanded(
      child: Text(
        '2-Yayın kuruluşlarını kötüleme ve karalama amacı içermemektedir',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }

  Expanded build3() {
    return Expanded(
      child: Text(
        '3-Telif hakkı sahibi kanallar kendi yayınlarının yürürlükten kaldırılmasını istiyorsa  mail adresimden ulaşabilirler',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }

  Expanded buildIletisim() {
    return Expanded(
      child: Text(
        'İLETİŞİM VE GERİ BİLDİRİM İÇİN ',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }

  Text buildMail() {
    return Text(
      'quiidev@hotmail.com',
      style: TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
    );
  }
}
