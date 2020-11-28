import 'package:e_commerce/UI/widgets/AllcommonWidget.dart';
import 'package:e_commerce/modal/Cart_Product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SingleCartProduct extends StatefulWidget {
  int productQuantity;

  @override
  _SingleCartProductState createState() => _SingleCartProductState();
}

class _SingleCartProductState extends State<SingleCartProduct> {
  @override
  Widget build(BuildContext context) {
    var cartProduct = Provider.of<CartProducts>(context);
    return Card(
      child: ListTile(
        leading: Container(
          child: Image.asset(
            cartProduct.productPicture,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(cartProduct.productName),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Size : ${cartProduct.productSize}'),
                Text('Color : ${cartProduct.productColor}'),
                Text(
                  '\$${cartProduct.productPrice}',
                  style: CommonWidget.textStyle(),
                ),
              ],
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_left),
                        onPressed: () {
                          setState(() {
                            if (cartProduct.productQuantity > 1) {
                              cartProduct.productQuantity--;
                            }
                          });
                        }),
                    Text('${cartProduct.productQuantity}'),
                    IconButton(
                      icon: Icon(Icons.arrow_right),
                      onPressed: () {
                        setState(() {
                          cartProduct.productQuantity++;
                        });
                      },
                    ),
                  ],
                ),
                Text(
                    'Total Cost : \$${cartProduct.productPrice * cartProduct.productQuantity}')
              ],
            )
          ],
        ),
      ),
    );
  }
}
