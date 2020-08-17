import 'package:e_commerce/Theme/appColors.dart';
import 'package:e_commerce/UI/widgets/AllcommonWidget.dart';
import 'package:e_commerce/UI/widgets/AppBar.dart';
import 'package:e_commerce/UI/widgets/SimilarProduct.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String productName;
  final String productPicture;
  final double productOldPrice;
  final double productPrice;

  const ProductDetail(
      {Key key,
      this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice})
      : super(key: key);
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.appBar(context),
      body: ListView(
        children: [
          productImage(),
          productInfo(),
          sizeColorQty(context),
          buyButtonCartWishlist(),
          Divider(),
          productDetailInfo(),
          Divider(),
          SimilarProduct(),
        ],
      ),
    );
  }

  Widget productImage() {
    double height = MediaQuery.of(context).size.height / 3;
    return Container(
      height: height,
      child: GridTile(
          child: Container(
              child: Image.asset(widget.productPicture, fit: BoxFit.cover))),
    );
  }

  Widget productInfo() {
    return ListTile(
      title: Row(
        children: [
          Text(
            'Product Name : ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text('${widget.productName}',
              style: TextStyle(
                fontSize: 18,
              ))
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            'Price : ',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text('\$${widget.productPrice}',
              style: TextStyle(fontSize: 18, color: Colors.black))
        ],
      ),
    );
  }

  Widget productDetailInfo() {
    String dummy =
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature';
    return ListTile(
      title: Text(
        'Product Detail',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Text(
        dummy,
        style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
      ),
    );
  }

  Widget buyButtonCartWishlist() {
    return Row(
      children: [
        Expanded(
            child: MaterialButton(
          color: Colours.mainColor,
          textColor: Colours.titleColor,
          elevation: 0.2,
          onPressed: () {},
          child: Text('Buy Now'),
        )),
        IconButton(
            icon: Icon(Icons.add_shopping_cart),
            color: Colours.titleColor,
            onPressed: () {}),
        IconButton(
            icon: Icon(Icons.favorite_border),
            color: Colours.titleColor,
            onPressed: () {}),
      ],
    );
  }

  Widget sizeColorQty(context) {
    return Row(
      children: [
        Expanded(
            child: MaterialButton(
                color: Colors.white,
                textColor: Colours.oldPriceColor,
                elevation: 0.2,
                onPressed: () => CommonWidget.dailogBox(context, 'Size'),
                child: Row(children: [
                  Expanded(child: Text('Size')),
                  Expanded(child: Icon(Icons.arrow_drop_down)),
                ]))),
        Expanded(
            child: MaterialButton(
                color: Colors.white,
                textColor: Colours.oldPriceColor,
                elevation: 0.2,
                onPressed: () => CommonWidget.dailogBox(context, 'Colors'),
                child: Row(children: [
                  Expanded(child: Text('Color')),
                  Expanded(child: Icon(Icons.arrow_drop_down)),
                ]))),
        Expanded(
            child: MaterialButton(
                color: Colors.white,
                textColor: Colours.oldPriceColor,
                elevation: 0.2,
                onPressed: () => CommonWidget.dailogBox(context, 'Quantity'),
                child: Row(children: [
                  Expanded(child: Text('QTY')),
                  Expanded(child: Icon(Icons.arrow_drop_down)),
                ]))),
      ],
    );
  }

  //This Footer Not been Use As i have Use product Info in replacement
  myFooter(context, height) {
    return Container(
      height: height / 6.2,
      color: Colors.white.withOpacity(0.5),
      child: ListTile(
        leading: Text(
          widget.productName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        title: Row(
          children: [
            // SizedBox(width: 25,),
            Expanded(
                child: Text(
              '\$${widget.productOldPrice}',
              style: TextStyle(
                color: Colours.oldPriceColor,
                decoration: TextDecoration.lineThrough,
                fontSize: 20,
              ),
            )),
            Expanded(
                child: Text(
              '\$${widget.productPrice}',
              style: TextStyle(color: Colours.priceColor, fontSize: 20),
            )),
          ],
        ),
      ),
    );
  }
}
