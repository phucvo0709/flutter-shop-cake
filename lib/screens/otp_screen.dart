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
  TextEditingController _numberOne = TextEditingController();
  TextEditingController _numberTwo = TextEditingController();
  TextEditingController _numberThree = TextEditingController();
  TextEditingController _numberFour = TextEditingController();

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
    _numberOne.text = "";
    _numberTwo.text = "";
    _numberThree.text = "";
    _numberFour.text = "";
    numberOneFocusNode.dispose();
    numberTwoFocusNode.dispose();
    numberThreeFocusNode.dispose();
    numberFourFocusNode.dispose();
    super.dispose();
  }

  void _handleResetOtp() {
    _numberOne.text = "";
    _numberTwo.text = "";
    _numberThree.text = "";
    _numberFour.text = "";
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
                                controller: _numberOne,
                                style: TextStyle(
                                  color: _numberOne.text.isEmpty
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
                                  fillColor: _numberOne.text.isEmpty
                                      ? Color(0xff8e8e93).withOpacity(0.12)
                                      : Theme.of(context).primaryColor,
                                ),
                                onChanged: (_) {
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
                                controller: _numberTwo,
                                style: TextStyle(
                                  color: _numberTwo.text.isEmpty
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
                                  fillColor: _numberTwo.text.isEmpty
                                      ? Color(0xff8e8e93).withOpacity(0.12)
                                      : Theme.of(context).primaryColor,
                                ),
                                onChanged: (_) {
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
                                controller: _numberThree,
                                style: TextStyle(
                                  color: _numberThree.text.isEmpty
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
                                  fillColor: _numberThree.text.isEmpty
                                      ? Color(0xff8e8e93).withOpacity(0.12)
                                      : Theme.of(context).primaryColor,
                                ),
                                onChanged: (_) {
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
                                controller: _numberFour,
                                style: TextStyle(
                                  color: _numberFour.text.isEmpty
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
                                  fillColor: _numberFour.text.isEmpty
                                      ? Color(0xff8e8e93).withOpacity(0.12)
                                      : Theme.of(context).primaryColor,
                                ),
                                onChanged: (_) {
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
