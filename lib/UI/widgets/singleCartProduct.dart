import 'package:e_commerce/UI/widgets/AllcommonWidget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingleCartProduct extends StatefulWidget {
  final String productName;
  final String productPicture;
  final double productPrice;
  final String productSize;
  final String productColor;
  int productQuantity;

  SingleCartProduct(
      {Key key,
      this.productName,
      this.productPicture,
      this.productPrice,
      this.productSize,
      this.productColor,
      this.productQuantity})
      : super(key: key);

  @override
  _SingleCartProductState createState() => _SingleCartProductState();
}

class _SingleCartProductState extends State<SingleCartProduct> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          child: Image.asset(
            widget.productPicture,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(widget.productName),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Size : ${widget.productSize}'),
                Text('Color : ${widget.productColor}'),
                Text(
                  '\$${widget.productPrice}',
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
                          if (widget.productQuantity > 1 ) {
                            widget.productQuantity--;
                          }                               
                        });
                      }
                    ),
                    Text('${widget.productQuantity}'),
                    IconButton(
                      icon: Icon(Icons.arrow_right),
                      onPressed: () {
                        setState(() {
                          widget.productQuantity++;
                        });
                      },
                    ),
                  ],
                ),
                Text(
                    'Total Cost : \$${widget.productPrice * widget.productQuantity}')
              ],
            )
          ],
        ),
      ),
    );
  }
}
