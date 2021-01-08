import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:flutter_shop_cake/screens/create_account_screen.dart';
import 'package:flutter_shop_cake/screens/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = "/welcome";
  final ColorConstant colorConstant = ColorConstant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/welcome.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black12,
                Colors.black87,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 90.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Text(
                      'Delivered fast Food to your door.'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 44.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.01,
                        height: 1.25,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      "Set exact location to find the right\n restaurants near you.",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: -0.41,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90.0,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 44.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.leftToRightWithFade,
                              child: CreateAccountScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            letterSpacing: -0.2,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 44.0,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 20.0,
                              icon: Icon(
                                FontAwesomeIcons.facebookSquare,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type:
                                        PageTransitionType.leftToRightWithFade,
                                    child: HomeScreen(),
                                  ),
                                );
                              },
                            ),
                            Text(
                              "Connect with facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                letterSpacing: -0.2,
                              ),
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        color: colorConstant.blueColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
