// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prueba_tecnica/screens/home/productos_screen.dart';

import '../../../constantes.dart';

class Categorias extends StatelessWidget {
  const Categorias({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            image: "assets/images/chaqueta.jpeg",
            press: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListaProducto(),
                ),
              );},
          ),
          FeaturePlantCard(
            image: "assets/images/zapatos.jpeg",
            press: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListaProducto(),
                ),
              );},
          ),
          FeaturePlantCard(
            image: "assets/images/joyas.jpeg",
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
    //Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(
          left: 22,
          right: 15,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: 80,
        height: 100,
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
