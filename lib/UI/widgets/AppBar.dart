import 'package:e_commerce/UI/Pages/cart.dart';
import 'package:e_commerce/UI/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/Theme/appColors.dart' as MyColor;

class MyAppBar {
  static Widget appBar(context) {
    return AppBar(
      backgroundColor: MyColor.Colours.mainColor,
      title: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text('E-Mall')),
      centerTitle: true,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: GestureDetector(
            child: Icon(Icons.search),
            onTap: () {
            },
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: GestureDetector(
            child: Icon(Icons.shopping_cart),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        )
      ],
    );
  }
}
