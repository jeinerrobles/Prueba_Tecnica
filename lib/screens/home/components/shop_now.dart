// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class ShopNow extends StatelessWidget {
  const ShopNow({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            // ignore: prefer_const_constructors
            color: Color.fromARGB(255, 0, 170, 105),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('Get upto 70% off on this Black Friday.',
                        style: TextStyle(
                            color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                   OutlinedButton(
                       style: OutlinedButton.styleFrom(
                       foregroundColor: Colors.black, backgroundColor: Colors.white,
                       shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      ),
                    // ignore: prefer_const_constructors
                    child: Text('Shop Now'),
                    onPressed: () {}
                  ),
                  ],
                ),
              ],
            ),
            ),
            ],
            );
          
  }
}

