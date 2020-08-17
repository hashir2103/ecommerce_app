import 'package:e_commerce/Theme/appColors.dart';
import 'package:e_commerce/UI/widgets/AllcommonWidget.dart';
import 'package:e_commerce/UI/widgets/AppBar.dart';
import 'package:e_commerce/UI/widgets/cartProduct.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.appBar(context),
      body: CartProduct(),
      bottomNavigationBar: mybottomNavigationBar(),
    );
  }

  mybottomNavigationBar() {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: ListTile(
            title: Text('Total:',style: CommonWidget.textStyle(),),
            trailing: Text('\$230',style: CommonWidget.textStyle()),
          )),
          Expanded(child: MaterialButton(onPressed: (){},
            child: Text(
              "Check out",
              style: TextStyle(color: Colours.titleColor,fontSize: 18),
              ),
            color: Colours.mainColor,))
        ],
      ),
    );
  }
}
