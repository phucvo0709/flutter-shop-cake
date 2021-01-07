import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';

class CreateAccountScreen extends StatefulWidget {
  static const routeName = "/create-account";

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final ColorConstant colorConstant = ColorConstant();
  final _globalKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  FocusNode userNameFocusNode;
  FocusNode emailFocusNode;
  FocusNode phoneFocusNode;
  FocusNode dateOfBirthFocusNode;
  FocusNode passwordFocusNode;

  @override
  void initState() {
    userNameFocusNode = FocusNode();
    emailFocusNode = FocusNode();
    phoneFocusNode = FocusNode();
    dateOfBirthFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    userNameFocusNode.dispose();
    emailFocusNode.dispose();
    phoneFocusNode.dispose();
    dateOfBirthFocusNode.dispose();
    passwordFocusNode.dispose();
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Create an account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorConstant.blackColor,
                    fontSize: 34.0,
                    height: 1.4,
                    letterSpacing: 0.6,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        focusNode: userNameFocusNode,
                        onFieldSubmitted: (_) {
                          userNameFocusNode.unfocus();
                          FocusScope.of(context).requestFocus(emailFocusNode);
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Username",
                          filled: true,
                          fillColor: Color(0xff8e8e93).withOpacity(0.12),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: colorConstant.greyColor,
                            letterSpacing: -0.4,
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        focusNode: emailFocusNode,
                        onFieldSubmitted: (_) {
                          emailFocusNode.unfocus();
                          FocusScope.of(context).requestFocus(phoneFocusNode);
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Email",
                          filled: true,
                          fillColor: Color(0xff8e8e93).withOpacity(0.12),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: colorConstant.greyColor,
                            letterSpacing: -0.4,
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty || !value.contains('@')) {
                            return 'Invalid email!';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        focusNode: phoneFocusNode,
                        keyboardType: TextInputType.number,
                        onFieldSubmitted: (_) {
                          phoneFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(dateOfBirthFocusNode);
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Phone",
                          filled: true,
                          fillColor: Color(0xff8e8e93).withOpacity(0.12),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: colorConstant.greyColor,
                            letterSpacing: -0.4,
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        focusNode: dateOfBirthFocusNode,
                        keyboardType: TextInputType.datetime,
                        onFieldSubmitted: (_) {
                          dateOfBirthFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(passwordFocusNode);
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Date Of Birth",
                          filled: true,
                          fillColor: Color(0xff8e8e93).withOpacity(0.12),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: colorConstant.greyColor,
                            letterSpacing: -0.4,
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        focusNode: passwordFocusNode,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          filled: true,
                          fillColor: Color(0xff8e8e93).withOpacity(0.12),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: colorConstant.greyColor,
                            letterSpacing: -0.4,
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      SizedBox(
                        height: 44.0,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          onPressed: () {
                            print('ok');
                            if (_formKey.currentState.validate()) {
                              final snackBar =
                                  SnackBar(content: Text('Processing data'));
                              _globalKey.currentState.showSnackBar(snackBar);
                            }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Column(
                        children: [
                          Text(
                            "By clicking Sign up you agree to the following Terms",
                            style: TextStyle(
                              fontSize: 13.0,
                              letterSpacing: 0.3,
                            ),
                          ),
                          Text(
                            "and Conditions without reservation",
                            style: TextStyle(
                              fontSize: 13.0,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
