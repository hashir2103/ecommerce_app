import 'package:e_commerce/Theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class MyCarousel {
  static Widget imageCarousel(context) => Container(
    height: MediaQuery.of(context).size.height/4,
    width: MediaQuery.of(context).size.width,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/images/index.jpg'),
        AssetImage('assets/images/index2.jpg'),
        AssetImage('assets/images/index3.jpg'),
        AssetImage('assets/images/index4.jpg'),
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4,
      dotSpacing: 20,
      dotBgColor: Colors.transparent,
      dotColor: Colors.white,
      dotIncreasedColor: Colours.mainColor,
      indicatorBgPadding: 10,
    ),
  );
}
