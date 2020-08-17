import 'package:e_commerce/Bloc/cart_product_bloc.dart';
import 'package:e_commerce/UI/widgets/singleCartProduct.dart';
import 'package:e_commerce/modal/Cart_Product.dart';
import 'package:e_commerce/modal/cart_product_response.dart';
import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  void initState() {
    super.initState();
    cartProductBloc.getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CartProductResponse>(
        stream: cartProductBloc.subject.stream,
        builder: (context, snapshot) {
          List<CartProducts> cartProduct = snapshot.data.cartProduct;
          return ListView.builder(
              itemCount: cartProduct.length,
              itemBuilder: (context, index) {
                return SingleCartProduct(
                  productName: cartProduct[index].productName,
                  productPicture: cartProduct[index].productPicture,
                  productPrice: cartProduct[index].productPrice,
                  productColor: cartProduct[index].productColor,
                  productQuantity: cartProduct[index].productQuantity,
                  productSize: cartProduct[index].productSize,
                );
              });
        });
  }
}
