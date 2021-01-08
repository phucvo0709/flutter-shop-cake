import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:flutter_shop_cake/models/categories.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

final ColorConstant colorConstant = ColorConstant();

Widget categoriesWidget(BuildContext context) {
  final categoriesProvider = Provider.of<Categories>(context, listen: false);
  final categories = categoriesProvider.categories;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 25.0,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Top categories",
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
      Padding(
        padding: EdgeInsets.only(top: 16.0, bottom: 27.0),
        child: SizedBox(
          height: 142.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (_, i) => Container(
              height: MediaQuery.of(context).size.height,
              width: 100.0,
              margin: i == 0
                  ? EdgeInsets.only(right: 16.0)
                  : i > 0 && i != categories.length - 1
                      ? EdgeInsets.only(right: 16.0)
                      : null,
              child: Card(
                elevation: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 88.0,
                      height: 88.0,
                      decoration: BoxDecoration(
                        color: categories[i].color,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(categories[i].imgSrc),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        categories[i].name,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 17.0,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    Text(
                      "${categories[i].places} places",
                      maxLines: 1,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: colorConstant.greyColor,
                          fontSize: 13.0,
                          letterSpacing: -0.08,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
