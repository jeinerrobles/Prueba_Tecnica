// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prueba_tecnica/constantes.dart';
import 'package:prueba_tecnica/screens/home/components/shop_now.dart';
import 'package:prueba_tecnica/screens/home/components/categorias.dart';


import 'trending.dart';
import 'cabecera_y_barra.dart';
import 'ecommerce.dart';
import 'titulos.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Cabecera(size: size),
          Ecommerce(),
          ShopNow(),
          SizedBox( height: 10,),
          Titulo(title: "Categories"),
          Categorias(),
          Categorias(),
          Titulo(title: "Tending Today"),
          Trending(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
