class CartProducts {
  final String productName;
  final String productPicture;
  final double productPrice;
  final String productSize;
  final String productColor;
  int productQuantity;

  CartProducts(this.productName, this.productPicture, this.productPrice,
      this.productSize, this.productColor, this.productQuantity);

  CartProducts.fromJson(Map<String, dynamic> json)
      : productName = json['name'],
        productPicture = json['picture'],
        productPrice = json['price'],
        productSize = json['size'],
        productColor = json['color'],
        productQuantity = json['quantity'];
}
