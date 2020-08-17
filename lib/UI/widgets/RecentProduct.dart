import 'package:e_commerce/Bloc/recent_product_bloc.dart';
import 'package:e_commerce/UI/widgets/singleProductDetail.dart';
import 'package:e_commerce/modal/Product.dart';
import 'package:e_commerce/modal/Product_Respose.dart';
import 'package:flutter/material.dart';

class RecentProducts extends StatefulWidget {
  @override
  _RecentProductsState createState() => _RecentProductsState();
}

class _RecentProductsState extends State<RecentProducts> {
  @override
  void initState() {
    super.initState();
    recentProductBloc.getProduct();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 2.15;
    return StreamBuilder<ProductResponse>(
        stream: recentProductBloc.subject.stream,
        builder: (context, snapshot) {
          List<Product> productList = snapshot.data.productList;
          return Container(
            height: height,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
        });
  }
}


