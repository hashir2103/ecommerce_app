import 'package:e_commerce/UI/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'Theme/appColors.dart' as Theme;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Theme.Colours.mainColor),
      home: HomePage(),
    );
  }
}
