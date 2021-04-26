import 'package:flutter/material.dart';

class Outline {
  final String image;
  final String name;
  final String category;
  final String description;
  double price;
  Outline({this.name, this.category, this.description, this.price, this.image});
}

class Clothes with ChangeNotifier {
  List<Outline> clothes = [
    Outline(
        name: 'Elegant and Warm Sweater',
        category: 'Elegant',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/costume1.png'),
    Outline(
        name: 'Elegant and Warm',
        category: 'Elegant',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/costume1.png'),
    Outline(
        name: 'Elegant and Warm',
        category: 'Elegant',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/costume1.png'),
    Outline(
        name: 'Elegant and Warm Sweater',
        category: 'Elegant',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/costume1.png'),
    Outline(
        name: 'Elegant and Warm Sweater',
        category: 'Elegant',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/costume1.png'),
    Outline(
        name: 'Elegant and Warm Sweater',
        category: 'Elegant',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/costume1.png'),
    Outline(
        name: 'Elegant and Warm Sweater',
        category: 'Elegant',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/costume1.png'),
  ];
}
