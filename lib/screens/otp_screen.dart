import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  static const routeName = "/otp";
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final ColorConstant colorConstant = ColorConstant();
  final _globalKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  FocusNode numberOneFocusNode;
  FocusNode numberTwoFocusNode;
  FocusNode numberThreeFocusNode;
  FocusNode numberFourFocusNode;
  String _numberOne = "";
  String _numberTwo = "";
  String _numberThree = "";
  String _numberFour = "";

  @override
  void initState() {
    numberOneFocusNode = FocusNode();
    numberTwoFocusNode = FocusNode();
    numberThreeFocusNode = FocusNode();
    numberFourFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _numberOne = "";
    _numberTwo = "";
    _numberThree = "";
    _numberFour = "";
    numberOneFocusNode.dispose();
    numberTwoFocusNode.dispose();
    numberThreeFocusNode.dispose();
    numberFourFocusNode.dispose();
    super.dispose();
  }

  void _handleResetOtp() {
    _numberOne = "";
    _numberTwo = "";
    _numberThree = "";
    _numberFour = "";
    _formKey.currentState.reset();
    FocusScope.of(context).requestFocus(numberOneFocusNode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            child: Column(
              children: [
                Text(
                  "Phone Verification",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorConstant.blackColor,
                    fontSize: 34.0,
                    height: 1.4,
                    letterSpacing: 0.6,
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  "Enter your OTP code here",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: colorConstant.blackColor,
                      fontSize: 17.0,
                      letterSpacing: -0.4,
                      height: 1.2,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: TextFormField(
                                autofocus: true,
                                focusNode: numberOneFocusNode,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                style: TextStyle(
                                  color: _numberOne.isEmpty
                                      ? colorConstant.blackColor
                                      : Colors.white,
                                  fontSize: 30.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(90.0)),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: _numberOne.isEmpty
                                      ? Color(0xff8e8e93).withOpacity(0.12)
                                      : Theme.of(context).primaryColor,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _numberOne = value;
                                  });
                                  numberOneFocusNode.unfocus();
                                  FocusScope.of(context)
                                      .requestFocus(numberTwoFocusNode);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 18.0,
                            ),
                            SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: TextFormField(
                                focusNode: numberTwoFocusNode,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                style: TextStyle(
                                  color: _numberTwo.isEmpty
                                      ? colorConstant.blackColor
                                      : Colors.white,
                                  fontSize: 30.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(90.0)),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: _numberTwo.isEmpty
                                      ? Color(0xff8e8e93).withOpacity(0.12)
                                      : Theme.of(context).primaryColor,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _numberTwo = value;
                                  });
                                  numberTwoFocusNode.unfocus();
                                  FocusScope.of(context)
                                      .requestFocus(numberThreeFocusNode);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 18.0,
                            ),
                            SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: TextFormField(
                                focusNode: numberThreeFocusNode,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                style: TextStyle(
                                  color: _numberThree.isEmpty
                                      ? colorConstant.blackColor
                                      : Colors.white,
                                  fontSize: 30.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(90.0)),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: _numberThree.isEmpty
                                      ? Color(0xff8e8e93).withOpacity(0.12)
                                      : Theme.of(context).primaryColor,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _numberThree = value;
                                  });
                                  numberThreeFocusNode.unfocus();
                                  FocusScope.of(context)
                                      .requestFocus(numberFourFocusNode);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 18.0,
                            ),
                            SizedBox(
                              width: 60.0,
                              height: 60.0,
                              child: TextFormField(
                                focusNode: numberFourFocusNode,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                style: TextStyle(
                                  color: _numberFour.isEmpty
                                      ? colorConstant.blackColor
                                      : Colors.white,
                                  fontSize: 30.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(90.0)),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: _numberFour.isEmpty
                                      ? Color(0xff8e8e93).withOpacity(0.12)
                                      : Theme.of(context).primaryColor,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _numberFour = value;
                                  });
                                  numberFourFocusNode.unfocus();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Text(
                              "Didn't you received any code?",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Color(0xFFB8BBC6),
                                  fontSize: 17.0,
                                  letterSpacing: -0.4,
                                  height: 1.2,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            GestureDetector(
                              onTap: () => {_handleResetOtp()},
                              child: Text(
                                "Resend a new code.",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 17.0,
                                    letterSpacing: -0.4,
                                    height: 1.2,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            )
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
    );
  }
}
