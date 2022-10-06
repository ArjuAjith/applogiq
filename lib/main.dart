import 'package:applogicq/presentaion/login_page.dart';
import 'package:applogicq/utils/font_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: colorCustom),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

Map<int, Color> color = {
  50: Color.fromRGBO(126, 0, 149, .1),
  100: Color.fromRGBO(126, 0, 149, .2),
  200: Color.fromRGBO(126, 0, 149, .3),
  300: Color.fromRGBO(126, 0, 149, .4),
  400: Color.fromRGBO(126, 0, 149, .5),
  500: Color.fromRGBO(126, 0, 149, .6),
  600: Color.fromRGBO(126, 0, 149, .7),
  700: Color.fromRGBO(126, 0, 149, .8),
  800: Color.fromRGBO(126, 0, 149, .9),
  900: Color.fromRGBO(126, 0, 149, 1),
};

MaterialColor colorCustom = MaterialColor(0xFF880E4F, color);
