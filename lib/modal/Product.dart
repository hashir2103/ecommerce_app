class Product {
  final String productName;
  final String productPicture;
  final double productOldPrice;
  final double productPrice;

  Product(this.productName, this.productPicture, this.productOldPrice,
      this.productPrice);

  Product.fromJson(Map<String, dynamic> json)
    : productName = json['name'],
      productPicture = json['picture'],
      productOldPrice = json['old_price'],
      productPrice = json['price'];
}
