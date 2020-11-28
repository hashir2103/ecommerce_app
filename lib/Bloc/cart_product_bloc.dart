import 'package:e_commerce/modal/cart_product_response.dart';
import 'package:rxdart/rxdart.dart';

class CartProductBloc {
  final BehaviorSubject<CartProductResponse> _subject =
      BehaviorSubject<CartProductResponse>();
  getProduct() {
    var cartProduct = [
    {
      'name': 'Check Shirt',
      'picture': 'assets/images/checkShirt.jpg',
      'price': 85.0,
      'size': 'M',
      'color': 'Blue',
      'quantity': 2

    },
    {
      'name': 'Causal Shoes',
      'picture': 'assets/images/shoe.jpg',
      'old_price': 155.0,
      'price': 135.0,
      'size': '41',
      'color': 'Grey',
      'quantity': 1
    },
    {
      'name': 'Purse',
      'picture': 'assets/images/purse.jpg',
      'old_price': 85.0,
      'price': 65.0,
      'size': '-',
      'color': 'Orange',
      'quantity': 1
    },
    
    
  ];
    CartProductResponse cartProductResponse = CartProductResponse.fromJson(cartProduct);
    _subject.sink.add(cartProductResponse);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<CartProductResponse> get subject => _subject;
}

final cartProductBloc = CartProductBloc();
