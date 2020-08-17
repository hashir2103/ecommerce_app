import 'Cart_Product.dart';

class CartProductResponse {
  final List<CartProducts> cartProduct;
  final String error;

  CartProductResponse(this.cartProduct, this.error);

  CartProductResponse.fromJson(List json)
      : cartProduct = json.map((e) => CartProducts.fromJson(e)).toList(),
        error = "";

  CartProductResponse.withError(String errorValue)
      : cartProduct = List(),
        error = errorValue;

}
