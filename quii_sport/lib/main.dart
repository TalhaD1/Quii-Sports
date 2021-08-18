import 'package:flutter/material.dart';
import 'package:quii_sport/view/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quii-Sports',
      home: HomeView(),
    );
  }
}
