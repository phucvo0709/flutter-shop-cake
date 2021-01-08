import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:flutter_shop_cake/models/cakes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ColorConstant colorConstant = ColorConstant();
  final TextEditingController _searchController = new TextEditingController();
  FocusNode searchFocusNode;

  @override
  void initState() {
    searchFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    _searchController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cakesProvider = Provider.of<Cakes>(context, listen: false);
    final featuresCake = cakesProvider.featuresCakes;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: null,
        title: Column(
          children: [
            SizedBox(
              height: 40.0,
              child: TextFormField(
                controller: _searchController,
                focusNode: searchFocusNode,
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.left,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 14.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorConstant.greyColor,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.0),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.0),
                    ),
                    borderSide: BorderSide(
                      color: colorConstant.greyColor,
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: colorConstant.greyColor,
                    letterSpacing: -0.4,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: SizedBox(
              width: 40.0,
              height: 40.0,
              child: CircleAvatar(
                backgroundColor: colorConstant.greyColor,
                radius: 20,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.filter_list),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 14.0),
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Discover new places",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 2.0,
                  letterSpacing: 0.24,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 393.0,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuresCake.length,
                  itemBuilder: (_, i) => Container(
                    height: MediaQuery.of(context).size.height,
                    width: 200.0,
                    padding: i == 0
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
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(
                                  image: AssetImage(featuresCake[i].imgUrl),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 16.0,
                                      color: Color(0xFFFFCC00),
                                    ),
                                    SizedBox(
                                      width: 1.0,
                                    ),
                                    Text(
                                      featuresCake[i].stars.toString(),
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: colorConstant.blackColor,
                                          fontSize: 12.0,
                                          letterSpacing: -0.08,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.0,
                                    ),
                                    Text(
                                      "(${featuresCake[i].ratings.toString()} ratings)",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: colorConstant.greyColor,
                                          fontSize: 12.0,
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
                                        fontSize: 10.0,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}