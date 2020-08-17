import 'package:e_commerce/Bloc/similar_product_bloc.dart';
import 'package:e_commerce/UI/widgets/singleProductDetail.dart';
import 'package:e_commerce/modal/Product.dart';
import 'package:e_commerce/modal/Product_Respose.dart';
import 'package:flutter/material.dart';

class SimilarProduct extends StatefulWidget {
  SimilarProduct({Key key}) : super(key: key);

  @override
  _SimilarProductState createState() => _SimilarProductState();
}

class _SimilarProductState extends State<SimilarProduct> {
  @override
  void initState() {
    super.initState();
    similarProductBloc.getProduct();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 4;
    return ListTile(
      title: Text(
        'SimilarProduct',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: StreamBuilder<ProductResponse>(
          stream: similarProductBloc.subject.stream,
          builder: (context, snapshot) {
            List<Product> productList = snapshot.data.productList;
            return Container(
              height: height,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return SingleProductDetail(
                      productName: productList[index].productName,
                      productPicture: productList[index].productPicture,
                      productOldPrice: productList[index].productOldPrice,
                      productPrice: productList[index].productPrice,
                    );
                  }),
            );
          }),
    );
  }
}
