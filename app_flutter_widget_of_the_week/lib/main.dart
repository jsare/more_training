import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/flutter_rating_bar.dart';
import 'pages/linear_gradient.dart';
import 'pages/navigation_rail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Widget of the Week',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/FlutterRatingBarPage': (context) => FLutterRatingBar(),
        '/LinearGradientPage': (context) => LinearGradientPage(),
        '/NavigationRalePage': (context) => NavigationRalePage(),
      },
    );
  }
}
