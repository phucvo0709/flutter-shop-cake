import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:flutter_shop_cake/models/cakes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

final ColorConstant colorConstant = ColorConstant();

Widget popularCakesWidget(BuildContext context) {
  final cakesProvider = Provider.of<Cakes>(context, listen: false);
  final popularCakes = cakesProvider.popularCakes;
  return Column(
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
              "Popular this week",
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
      Container(
        width: MediaQuery.of(context).size.width,
        constraints: BoxConstraints(
          maxHeight: popularCakes.length * 120.0,
        ),
        child: ListView.builder(
          itemCount: popularCakes.length,
          itemBuilder: (_, i) => Container(
            height: 104.0,
            width: MediaQuery.of(context).size.width,
            margin: i == 0
                ? EdgeInsets.only(bottom: 16.0)
                : i > 0 && i != popularCakes.length - 1
                    ? EdgeInsets.only(bottom: 16.0)
                    : null,
            child: Card(
              elevation: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      width: 88.0,
                      height: 88.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage(popularCakes[i].imgSrc),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          popularCakes[i].name,
                          // maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            letterSpacing: -0.41,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          popularCakes[i].address,
                          // maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: colorConstant.greyColor,
                              fontSize: 13.0,
                              letterSpacing: -0.08,
                              height: 1.2,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        SizedBox(
                          height: 16.0,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 16.0,
                                    color: Color(0xFFFFCC00),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Text(
                                    popularCakes[i].stars.toString(),
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        color: colorConstant.blackColor,
                                        fontSize: 13.0,
                                        letterSpacing: -0.08,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "(${popularCakes[i].ratings.toString()} ratings)",
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
                              Container(
                                height: 16.0,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.0,
                                  vertical: 3.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.5),
                                  ),
                                ),
                                child: Text(
                                  "Free delivery",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.0,
                                      letterSpacing: -0.07,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
