import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';

class CreateAccountScreen extends StatefulWidget {
  static const routeName = "/create-account";

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final ColorConstant colorConstant = ColorConstant();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            child: Column(
              children: [
                Text(
                  "Create an account",
                  style: TextStyle(
                    color: colorConstant.blackColor,
                    fontSize: 34.0,
                    height: 2.0,
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
                        keyboardType: TextInputType.number,
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
                        keyboardType: TextInputType.datetime,
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
                            if (_formKey.currentState.validate()) {
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text('Processing Data')));
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
