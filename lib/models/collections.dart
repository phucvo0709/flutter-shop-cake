import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Collection {
  final int id;
  final int idUser;
  final String name;
  final String imgSrc;
  final String imgDetail;
  final int places;

  Collection({
    @required this.id,
    @required this.idUser,
    @required this.name,
    @required this.imgSrc,
    @required this.imgDetail,
    @required this.places,
  });
}
