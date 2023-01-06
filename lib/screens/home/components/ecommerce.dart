// ignore_for_file: prefer_const_constructors, duplicate_ignore



import 'package:flutter/material.dart';
import 'package:prueba_tecnica/screens/home/productos_screen.dart';

import '../../../constantes.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/modelo4.jpeg",
            title: "Ecommerce",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListaProducto(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/modelo2.jpeg",
            title: "Ecommerce",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListaProducto(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/modelo3.jpeg",
            title: "Ecommerce",
            press: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListaProducto(),
                ),
              );},
          ),
          RecomendPlantCard(
            image: "assets/images/modelo4.jpeg",
            title: "Ecommerce",
            press: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListaProducto(),
                ),
              );},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.30,
      child: Column(
        children: <Widget>[
          Image.asset(image,width: 200, height: 150,),
          GestureDetector(
            onTap: press,
            // ignore: duplicate_ignore, duplicate_ignore
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(kDefaultPadding / 3),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                    BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 5,
                    color: Colors.grey,
                  ),
                ],
              ),
              // ignore: prefer_const_constructors
              child: Text(
                'Ecommerce',
                 style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
