// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:prueba_tecnica/screens/home/productos_screen.dart';

import '../constantes.dart';

class nav_bar extends StatelessWidget {
  const nav_bar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 40,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 0, 170, 105),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: Colors.white,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home_outlined),color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu_rounded),color: Colors.white,
            onPressed: () {Navigator.push(
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
