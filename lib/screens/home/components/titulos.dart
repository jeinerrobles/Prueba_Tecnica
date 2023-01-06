// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../constantes.dart';

class Titulo extends StatelessWidget {
  const Titulo({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
        ],
      ),
      
      
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
         
        ],
      ),
    );
  }
}
