import 'package:e_commerce/Theme/appColors.dart';
import 'package:e_commerce/UI/Pages/cart.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text(
                'Hashir Siddiqui',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                  ),
                ),
              accountEmail: Text(
                'ashir_siddiqui@gmail.com',
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15
                  ),
                ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/dp.png")
              )),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.account_circle,color: Colours.titleColor,),
              title: Text("My Account"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.shopping_basket,color: Colours.titleColor,),
              title: Text("My Orders"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
            child: ListTile(
              leading: Icon(Icons.shopping_cart,color: Colours.titleColor,),
              title: Text("Shopping Cart"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.favorite,color: Colours.titleColor,),
              title: Text("Favourites"),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.settings,color: Colours.titleColor,),
              title: Text("Settings"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.help,color: Colours.titleColor,),
              title: Text('About Us'),
            ),
          ),
        ],
      ),
    );
  }
}
