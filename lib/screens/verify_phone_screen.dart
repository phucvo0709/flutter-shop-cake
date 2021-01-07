import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:flutter_shop_cake/screens/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class VerifyPhoneScreen extends StatefulWidget {
  static const routeName = "/verify-phone";
  @override
  _VerifyPhoneScreenState createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  final ColorConstant colorConstant = ColorConstant();
  final _globalKey = GlobalKey<ScaffoldState>();
  String _hintTextPhone = "Phone";
  FocusNode phoneFocusNode;

  @override
  void initState() {
    phoneFocusNode = FocusNode();
    super.initState();
    phoneFocusNode.addListener(() {
      if (phoneFocusNode.hasFocus) {
        _hintTextPhone = '';
      } else {
        _hintTextPhone = 'Phone';
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    phoneFocusNode.dispose();
    super.dispose();
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
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                child: Column(
                  children: [
                    Text(
                      "Verify your\n phone number",
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
                      "We have sent you an SMS with a code to\n number +84 905070017",
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
                    SizedBox(
                      height: 44.0,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: Color(0xff8e8e93).withOpacity(0.12),
                        ),
                        child: IntlPhoneField(
                          focusNode: phoneFocusNode,
                          decoration: InputDecoration(
                            labelText: _hintTextPhone,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintStyle: TextStyle(
                              color: colorConstant.greyColor,
                              letterSpacing: -0.4,
                            ),
                          ),
                          onChanged: (phone) {
                            if (phone.completeNumber.isEmpty) {
                              return 'Please enter some text';
                            }
                            print(phone.completeNumber);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Or login with ",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Color(0xFFB8BBC6),
                            fontSize: 17.0,
                            letterSpacing: -0.4,
                            height: 1.2,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        children: [
                          TextSpan(
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () => Navigator.of(context)
                                  .pushReplacementNamed(
                                      WelcomeScreen.routeName),
                            text: "Social network",
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 44.0,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    onPressed: () {
                      print('ok');
                    },
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
