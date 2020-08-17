import 'package:e_commerce/modal/Product.dart';

class ProductResponse {
  final List<Product> productList;
  final String error;

  ProductResponse(this.productList, this.error);

  ProductResponse.fromJson(List json)
      : productList = json.map((e) => Product.fromJson(e)).toList(),
        error = "";

  ProductResponse.withError(String errorValue)
      : productList = List(),
        error = errorValue;

}
