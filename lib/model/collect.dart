import 'package:flutter/material.dart';

class Colections {
  final String image;
  final String name;
  Colections({this.image, this.name});
}

class ColectionModel with ChangeNotifier {
  List<Colections> col = [
    Colections(image: 'images/kidd1.png', name: 'Casual'),
    Colections(image: 'images/cas1.png', name: 'Casual'),
    Colections(image: 'images/costume1.png', name: 'Casual'),
    Colections(image: 'images/kidd2.png', name: 'Casual'),
    Colections(image: 'images/cas1.png', name: 'Casual'),
    Colections(image: 'images/cas1.png', name: 'Casual'),
  ];
}
