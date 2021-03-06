import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:flutter_shop_cake/models/cakes.dart';
import 'package:flutter_shop_cake/models/categories.dart';
import 'package:flutter_shop_cake/models/user.dart';
import 'package:flutter_shop_cake/screens/collection_screen.dart';
import 'package:flutter_shop_cake/screens/create_account_screen.dart';
import 'package:flutter_shop_cake/screens/home_screen.dart';
import 'package:flutter_shop_cake/screens/otp_screen.dart';
import 'package:flutter_shop_cake/screens/verify_phone_screen.dart';
import 'package:flutter_shop_cake/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ColorConstant colorConstant = ColorConstant();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Cakes(),
        ),
        ChangeNotifierProvider(
          create: (_) => Categories(),
        ),
        ChangeNotifierProvider(
          create: (_) => DetailUser(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop Cake',
        theme: ThemeData(
          primaryColor: colorConstant.primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Avenir",
        ),
        home: WelcomeScreen(),
        routes: {
          WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
          CreateAccountScreen.routeName: (ctx) => CreateAccountScreen(),
          VerifyPhoneScreen.routeName: (ctx) => VerifyPhoneScreen(),
          OtpScreen.routeName: (ctx) => OtpScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(),
          CollectionScreen.routeName: (ctx) => CollectionScreen(),
        },
      ),
    );
  }
}
