// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prueba_tecnica/screens/home/productos_screen.dart';

import '../../../constantes.dart';

class Trending extends StatelessWidget {
  const Trending({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            image: "assets/images/shopify.jpeg",
            press: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListaProducto(),
                ),
              );},
          ),
          FeaturePlantCard(
            image: "assets/images/jean.jpeg",
            press: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListaProducto(),
                ),
              );},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
