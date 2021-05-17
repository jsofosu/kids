import 'package:flutter/material.dart';

class Outline {
  final String id;
  final String image;
  final String name;
  final String category;
  final String description;
  final double price;
  int quantity;
  bool incart;

  Outline({
    this.id,
    this.name,
    this.category,
    this.description,
    this.price,
    this.image,
    this.quantity = 1,
    this.incart = false,
  });
}

class Clothes with ChangeNotifier {
  List<Outline> clothes = [
    Outline(
        id: '001',
        name: 'Elegant and Warm Sweater',
        category: 'Sweater',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/msweat1.png'),
    Outline(
        id: '002',
        name: 'Elegant and Warm Sweater',
        category: 'Sweater',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/girlsweater.png'),
    Outline(
        id: '003',
        name: 'Spacesuit',
        category: 'Costume',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/cos5.png'),
    Outline(
        id: '004',
        name: 'Medical Fit',
        category: 'Costume',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/doctor.png'),
    Outline(
        id: '005',
        name: 'Elegant and Warm Sweater',
        category: 'Sweater',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/gsweat.png'),
    Outline(
        id: '006',
        name: 'Elegant and Warm Sweater',
        category: 'Sweater',
        description:
            'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
        price: 120,
        image: 'images/msweater2.png'),
    Outline(
      id: '007',
      name: 'Cheer Uniform',
      category: 'Costume',
      description:
          'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
      price: 120,
      image: 'images/cheelead.png',
    ),
    Outline(
      id: '008',
      name: 'Casual Jeans Outfit',
      category: 'Casual',
      description:
          'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
      price: 120,
      image: 'images/casual.png',
    ),
    Outline(
      id: '009',
      name: 'Elegant Costume',
      category: 'Costume',
      description:
          'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
      price: 120,
      image: 'images/magic.png',
    ),
    Outline(
      id: '010',
      name: 'Casual Outfit',
      category: 'Casual',
      description:
          'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
      price: 120,
      image: 'images/bcasual.png',
    ),
    Outline(
      id: '011',
      name: 'Military Uniform',
      category: 'Costume',
      description:
          'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
      price: 120,
      image: 'images/military.png',
    ),
    Outline(
      id: '012',
      name: 'Police Uniform',
      category: 'Costume',
      description:
          'Wear comfy sweaters that would keep you warm during the cold. Your kids would love it so you better buy. Thank you',
      price: 120,
      image: 'images/police.png',
    ),
  ];
}
