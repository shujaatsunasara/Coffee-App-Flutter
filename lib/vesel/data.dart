import 'package:flutter/material.dart';
import 'package:thirdproject/vesel/coffeetile.dart';

class Data {
  static List cards = <dynamic>[
    coffeetile(
      title: 'sample',
      desc: 'sampledesc',
      img: 'assets/images/cf1.jpg',
    ),
    coffeetile(
      title: 'sample',
      desc: 'sampledesc',
      img: 'assets/images/cf1.png',
    ),
    coffeetile(
      title: 'sample',
      desc: 'sampledesc',
      img: 'assets/images/cf2.png',
    ),
    coffeetile(
      title: 'sample',
      desc: 'sampledesc',
      img: 'assets/images/cf3.png',
    ),
    coffeetile(
      title: 'sample',
      desc: 'sampledesc',
      img: 'assets/images/cf4.png',
    ),
  ];
}

coffeetile(
    {required String title, required String desc, required String img}) {}
