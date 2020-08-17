import 'package:e_commerce/Theme/appColors.dart';
import 'package:e_commerce/UI/Pages/product_detail.dart';
import 'package:flutter/material.dart';

class SingleProductDetail extends StatelessWidget {
  final String productName;
  final String productPicture;
  final double productOldPrice;
  final double productPrice;

  const SingleProductDetail(
      {Key key,
      this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: () {
                moveToProductDetailPage(context);
              },
              child: GridTile(
                  footer: myFooter(context),
                  child: Image.asset(
                    productPicture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }

  moveToProductDetailPage(context) {
    return Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProductDetail(
              productName: productName,
              productPicture: productPicture,
              productOldPrice: productOldPrice,
              productPrice: productPrice,
            )));
  }

  Widget myFooter(context) {
    return Container(
      height: MediaQuery.of(context).size.height / 23,
      color: Colors.white.withOpacity(0.3),
      child: ListTile(
        leading:
            Text(productName, style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("\$$productPrice",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colours.priceColor)),
            Text("\$$productOldPrice",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colours.oldPriceColor,
                    decoration: TextDecoration.lineThrough)),
          ],
        )),
      ),
    );
  }
}