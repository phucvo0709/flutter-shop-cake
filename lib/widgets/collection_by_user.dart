import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:flutter_shop_cake/models/user.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

final ColorConstant colorConstant = ColorConstant();

Widget collectionByUser(BuildContext context) {
  final userProvider = Provider.of<DetailUser>(context, listen: false);
  final collection = userProvider.collection;

  return Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 25.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Collections by Fizzy",
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 0.38,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: colorConstant.blackColor,
                      fontSize: 15.0,
                      letterSpacing: -0.24,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  text: "Show all",
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        SizedBox(
          height: 136.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: collection.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) => ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: 230.0,
                margin: i == 0
                    ? EdgeInsets.only(right: 16.0)
                    : i > 0 && i != collection.length - 1
                        ? EdgeInsets.only(right: 16.0)
                        : null,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(collection[i].imgSrc),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
