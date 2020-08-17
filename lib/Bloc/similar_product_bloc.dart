import 'package:e_commerce/modal/Product_Respose.dart';
import 'package:rxdart/rxdart.dart';

class SimilarProductBloc {
  final BehaviorSubject<ProductResponse> _subject =
      BehaviorSubject<ProductResponse>();
  getProduct() {
    var productList = [
    {
      'name': 'Blazer',
      'picture': 'assets/images/2010.jpg',
      'old_price': 150.0,
      'price': 100.0
    },
    {
      'name': 'Check Shirt',
      'picture': 'assets/images/checkShirt.jpg',
      'old_price': 120.0,
      'price': 85.0
    },
    {
      'name': 'Red Shirt',
      'picture': 'assets/images/index.jpg',
      'old_price': 30.0,
      'price': 20.0
    },
    {
      'name': 'Shirt',
      'picture': 'assets/images/index2.jpg',
      'old_price': 25.0,
      'price': 20.0
    },
  ];
    ProductResponse productResponse = ProductResponse.fromJson(productList);
    _subject.sink.add(productResponse);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<ProductResponse> get subject => _subject;
}

final similarProductBloc = SimilarProductBloc();
