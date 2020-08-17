import 'package:e_commerce/UI/widgets/AllcommonWidget.dart';
import 'package:e_commerce/UI/widgets/AppBar.dart';
import 'package:e_commerce/UI/widgets/RecentProduct.dart';
import 'package:e_commerce/UI/widgets/carousel.dart';
import 'package:e_commerce/UI/widgets/drawer.dart';
import 'package:e_commerce/UI/widgets/Catergory_list.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.appBar(context),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          MyCarousel.imageCarousel(context),
          CommonWidget.label('Shop by Catergory'),
          CategoryList(),
          Divider(),
          CommonWidget.label('Recent Products'),
          RecentProducts(),
          Stack()
        ],
      ),
    );
  }
}
