import 'package:flutter/cupertino.dart';

class Cake {
  final int id;
  final String name;
  final String address;
  final String imgUrl;
  final double stars;
  final int ratings;
  final bool freeShipping;
  final bool featured;

  Cake({
    @required this.id,
    @required this.name,
    @required this.address,
    @required this.imgUrl,
    this.stars,
    this.ratings,
    this.freeShipping,
    this.featured,
  });
}

class Cakes with ChangeNotifier {
  List<Cake> _cakes = [
    Cake(
      id: 1,
      name: "Andy & Cindy's Diner",
      address: "87 Botsford Circle Apt",
      imgUrl: "assets/images/cake-1.png",
      stars: 4.8,
      ratings: 223,
      freeShipping: true,
      featured: true,
    ),
    Cake(
      id: 2,
      name: "The Garage Bar & Grill",
      address: "1175 Gislason Shore Apt. 658",
      imgUrl: "assets/images/cake-2.png",
      stars: 4.3,
      ratings: 135,
      freeShipping: false,
      featured: true,
    ),
    Cake(
      id: 3,
      name: "The Garage Bar & Grill 2",
      address: "1175 Gislason Shore Apt. 658",
      imgUrl: "assets/images/cake-2.png",
      stars: 4.3,
      ratings: 135,
      freeShipping: true,
      featured: false,
    ),
  ];

  List<Cake> get cakes => _cakes;

  List<Cake> get featuresCakes {
    return _cakes.where((element) => element.featured).toList();
  }
}
