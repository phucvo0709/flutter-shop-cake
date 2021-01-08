import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:flutter_shop_cake/models/cakes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

final ColorConstant colorConstant = ColorConstant();

Widget discoverCakesWidget(BuildContext context) {
  final cakesProvider = Provider.of<Cakes>(context, listen: false);
  final featuresCake = cakesProvider.featuresCakes;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Discover new places",
        style: TextStyle(
          fontSize: 30.0,
          height: 2.0,
          letterSpacing: 0.24,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20.0, bottom: 27.0),
        child: SizedBox(
          height: 335.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuresCake.length,
            itemBuilder: (_, i) => Container(
              height: MediaQuery.of(context).size.height,
              width: 200.0,
              margin: i == 0
                  ? EdgeInsets.only(right: 17.0)
                  : i > 0 && i != featuresCake.length - 1
                      ? EdgeInsets.only(right: 17.0)
                      : null,
              child: Card(
                elevation: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        height: 250.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage(featuresCake[i].imgSrc),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14.0,
                    ),
                    Text(
                      featuresCake[i].name,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        letterSpacing: -0.41,
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      featuresCake[i].address,
                      maxLines: 1,
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
                      height: 5.0,
                    ),
                    SizedBox(
                      height: 16.0,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                featuresCake[i].stars.toString(),
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
                                "(${featuresCake[i].ratings.toString()} ratings)",
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
            ),
          ),
        ),
      ),
    ],
  );
}
