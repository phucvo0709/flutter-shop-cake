import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:flutter_shop_cake/widgets/categories_widget.dart';
import 'package:flutter_shop_cake/widgets/collection_by_user.dart';
import 'package:flutter_shop_cake/widgets/discover_cakes_widget.dart';
import 'package:flutter_shop_cake/widgets/popular_cakes_widget.dart';

final ColorConstant colorConstant = ColorConstant();

Widget homeScreenContent(BuildContext context) {
  return SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    child: Container(
      padding: EdgeInsets.all(14.0),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          discoverCakesWidget(context),
          categoriesWidget(context),
          popularCakesWidget(context),
          collectionByUser(context),
        ],
      ),
    ),
  );
}
