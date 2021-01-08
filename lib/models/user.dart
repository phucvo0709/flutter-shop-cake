import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/models/collections.dart';

class User {
  final int id;
  final List<Collection> collections;

  User({
    @required this.id,
    @required this.collections,
  });
}

class DetailUser with ChangeNotifier {
  List<Collection> _collections = [
    Collection(
      id: 1,
      idUser: 1,
      name: "Asia",
      imgSrc: "assets/images/cake-3.png",
      imgDetail: "assets/images/cake-1.png",
      places: 134,
    ),
    Collection(
      id: 2,
      idUser: 2,
      name: "Brazil",
      imgSrc: "assets/images/cake-3.png",
      imgDetail: "assets/images/cake-1.png",
      places: 134,
    ),
    Collection(
      id: 3,
      idUser: 1,
      name: "USA",
      imgSrc: "assets/images/cake-3.png",
      imgDetail: "assets/images/cake-2.png",
      places: 134,
    ),
    Collection(
      id: 4,
      idUser: 1,
      name: "Korea",
      imgSrc: "assets/images/cake-3.png",
      imgDetail: "assets/images/cake-2.png",
      places: 134,
    ),
  ];

  List<Collection> _collection = [];

  List<Collection> get collections => _collections;

  List<Collection> get collection => _collection;

  void onGetCollectionByUser(int idUser) {
    _collection =
        _collections.where((element) => element.idUser == idUser).toList();
    notifyListeners();
  }
}
