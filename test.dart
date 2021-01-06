import 'package:flutter/material.dart';

mixin test implements StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator 1_welcomeWidget - FRAME
    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 375,
                  height: 812,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(150, 150, 150, 1),
                      width: 1,
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Bg.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 375,
                  height: 812,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(150, 150, 150, 1),
                      width: 1,
                    ),
                    gradient: LinearGradient(
                        begin: Alignment(0, 1.0530076026916504),
                        end: Alignment(-1.0530076026916504, 0),
                        colors: [
                          Color.fromRGBO(0, 0, 0, 0.00009999999747378752),
                          Color.fromRGBO(0, 0, 0, 1)
                        ]),
                  ))),
          Positioned(top: 0, left: 0, child: null),
          Positioned(top: 778, left: 0, child: null),
          Positioned(
              top: 671,
              left: 30,
              child: Container(
                  width: 315,
                  height: 44,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 315,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(22),
                                topRight: Radius.circular(22),
                                bottomLeft: Radius.circular(22),
                                bottomRight: Radius.circular(22),
                              ),
                              color: Color.fromRGBO(0, 122, 255, 1),
                            ))),
                    Positioned(
                        top: 12,
                        left: 98,
                        child: Text(
                          'Connect with facebook',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Avenir',
                              fontSize: 15,
                              letterSpacing: -0.3617647886276245,
                              fontWeight: FontWeight.normal,
                              height: 1.3333333333333333),
                        )),
                    Positioned(top: 8, left: 62, child: null),
                  ]))),
          Positioned(
              top: 617,
              left: 30,
              child: Container(
                  width: 315,
                  height: 44,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 315,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(22),
                                topRight: Radius.circular(22),
                                bottomLeft: Radius.circular(22),
                                bottomRight: Radius.circular(22),
                              ),
                              color: Color.fromRGBO(255, 140, 0, 1),
                            ))),
                    Positioned(
                        top: 10,
                        left: 134,
                        child: Text(
                          'Log In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Avenir',
                              fontSize: 17,
                              letterSpacing: -0.2720000147819519,
                              fontWeight: FontWeight.normal,
                              height: 1.1764705882352942),
                        )),
                  ]))),
          Positioned(
              top: 237,
              left: 30,
              child: Text(
                'Delivered fast Food to your door.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Avenir',
                    fontSize: 44,
                    letterSpacing: -0.6399999856948853,
                    fontWeight: FontWeight.normal,
                    height: 1.25),
              )),
          Positioned(
              top: 482,
              left: 30,
              child: Text(
                'Set exact location to find the right restaurants near you.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Avenir',
                    fontSize: 17,
                    letterSpacing: -0.4099999964237213,
                    fontWeight: FontWeight.normal,
                    height: 1.2941176470588236),
              )),
        ]));
  }
}
