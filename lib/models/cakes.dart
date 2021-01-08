import 'package:flutter/foundation.dart';

class Cake {
  final int id;
  final String name;
  final String address;
  final String imgSrc;
  final double stars;
  final int ratings;
  final bool freeShipping;
  final bool featured;
  final bool isPopular;

  Cake({
    @required this.id,
    @required this.name,
    @required this.address,
    @required this.imgSrc,
    this.stars,
    this.ratings,
    this.freeShipping,
    this.featured,
    this.isPopular,
  });
}

class Cakes with ChangeNotifier {
  List<Cake> _cakes = [
    Cake(
      id: 1,
      name: "Andy & Cindy's Diner The Garage Bar & Grill 2",
      address: "apt The Garage Bar & Grill 2",
      imgSrc: "assets/images/cake-1.png",
      stars: 4.8,
      ratings: 223,
      freeShipping: true,
      featured: true,
      isPopular: false,
    ),
    Cake(
      id: 2,
      name: "The Garage Bar & Grill The Garage Bar & Grill 2",
      address: "1175 Gislason Shore Apt. 658",
      imgSrc: "assets/images/cake-2.png",
      stars: 4.3,
      ratings: 135,
      freeShipping: false,
      featured: true,
      isPopular: true,
    ),
    Cake(
      id: 3,
      name: "The Garage Bar & Grill 2 The Garage Bar & Grill 2",
      address: "1175 Gislason Shore Apt. 658",
      imgSrc: "assets/images/cake-2.png",
      stars: 4.3,
      ratings: 135,
      freeShipping: true,
      featured: true,
      isPopular: false,
    ),
    Cake(
      id: 3,
      name: "The Garage Bar & Grill 2 The Garage Bar & Grill 2",
      address: "1175 Gislason Shore Apt. 658",
      imgSrc: "assets/images/cake-2.png",
      stars: 4.3,
      ratings: 135,
      freeShipping: true,
      featured: true,
      isPopular: true,
    ),
  ];

  List<Cake> get cakes => _cakes;

  List<Cake> get featuresCakes {
    return _cakes.where((element) => element.featured).toList();
  }

  List<Cake> get popularCakes {
    return _cakes.where((element) => element.isPopular).toList();
  }
}
