import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imagePath: 'assets/images/shirt.png',
            caption: 'Shirts',
          ),
          Category(
            imagePath: 'assets/images/pants.png',
            caption: 'Pants',
          ),
          Category(
            imagePath: 'assets/images/man.png',
            caption: 'Formal',
          ),
          Category(
            imagePath: 'assets/images/dress.png',
            caption: 'Dresses',
          ),
          Category(
            imagePath: 'assets/images/shoes.png',
            caption: 'Shoes',
          ),
          Category(
            imagePath: 'assets/images/bag.png',
            caption: 'Accessory',
          ),
          Category(
            imagePath: 'assets/images/jewel.png',
            caption: 'Others',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagePath;
  final String caption;
  const Category({Key key, this.imagePath, this.caption}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 4.5;
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        child: ListTile(
          title: Image.asset(imagePath, width: width),
          subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              alignment: Alignment.topCenter,
              child: Text(caption)),
        ),
      ),
    );
  }
}
