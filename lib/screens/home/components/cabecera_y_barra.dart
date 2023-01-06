// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constantes.dart';

class Cabecera extends StatelessWidget {
  const Cabecera({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding,
            ),
            height: 400,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                
                Column(
                  children: [
                    SizedBox( height: 40),
                    Text(
                  'Hi Usman!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                icon: const Icon(Icons.location_on_outlined, size: 20),color: Colors.white, 
                onPressed: () {},
          ),
                    Text(
                  'COMSATS University Islamabad',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                ),
                  ],
                ) 
                 
                  ],
                ),
                
                
                const Spacer(),
                IconButton(
                icon: const Icon(Icons.notifications_none_rounded),color: Colors.white,
                onPressed: () {},
          ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 60.0),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 5,
                    color: Colors.grey,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  IconButton(
            icon: const Icon(Icons.search),color: Colors.grey,
            onPressed: () {},
          ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
