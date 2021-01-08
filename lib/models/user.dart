import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/models/collections.dart';

class User {
  final int id;
  final List<Collection> collections;

  User({@required this.id, @required this.collections});
}

class DetailUser with ChangeNotifier {
  List<Collection> _collections = [
    Collection(
      id: 1,
      idUser: 1,
      name: "collection 1",
      imgSrc: "assets/images/cake-3.png",
    ),
    Collection(
      id: 2,
      idUser: 2,
      name: "collection 1",
      imgSrc: "assets/images/cake-3.png",
    ),
    Collection(
      id: 3,
      idUser: 1,
      name: "collection 1",
      imgSrc: "assets/images/cake-3.png",
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
