import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category {
  final int id;
  final String name;
  final String imgSrc;
  final int places;
  final Color color;

  Category({
    @required this.id,
    @required this.name,
    @required this.imgSrc,
    this.places,
    this.color,
  });
}

class Categories with ChangeNotifier {
  List<Category> _categories = [
    Category(
        id: 1,
        name: "Burger",
        imgSrc: "assets/images/category-burgers.png",
        color: Color(0xFFFF8C00),
        places: 1190),
    Category(
        id: 2,
        name: "Hotdog",
        imgSrc: "assets/images/category-hotdog.png",
        color: Color(0xFF5AC8FA),
        places: 4421),
    Category(
        id: 3,
        name: "Pizza",
        imgSrc: "assets/images/category-pizza.png",
        color: Color(0xFF5856D6),
        places: 213),
    Category(
      id: 4,
      name: "Burger",
      imgSrc: "assets/images/category-burgers.png",
      color: Color(0xFFFF2D55),
      places: 1,
    ),
  ];

  List<Category> get categories => _categories;
}
