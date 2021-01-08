import 'package:flutter/material.dart';
import 'package:flutter_shop_cake/constants/color_constant.dart';
import 'package:flutter_shop_cake/models/user.dart';
import 'package:flutter_shop_cake/screens/HomeScreen/home_screen_content.dart';
import 'package:flutter_shop_cake/screens/HomeScreen/my_favorite_content.dart';
import 'package:flutter_shop_cake/screens/HomeScreen/my_order_content.dart';
import 'package:flutter_shop_cake/screens/HomeScreen/my_profile.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // bottom nav bar
  int _selectedIndex = 0;
  // end nav bar
  DateTime currentBackPressTime;
  final ColorConstant colorConstant = ColorConstant();
  final TextEditingController _searchController = new TextEditingController();
  FocusNode _searchFocusNode;

  @override
  void initState() {
    _searchFocusNode = FocusNode();
    _searchFocusNode.addListener(_onOnFocusNodeEvent);
    Future.delayed(Duration.zero, () async {
      Provider.of<DetailUser>(context, listen: false).onGetCollectionByUser(1);
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_selectedIndex == 0) {
      Future.delayed(Duration.zero, () async {
        Provider.of<DetailUser>(context, listen: false)
            .onGetCollectionByUser(1);
      });
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    _searchController.clear();
    super.dispose();
  }

  _onOnFocusNodeEvent() {
    setState(() {
      // Re-renders
    });
  }

  // bottom nav bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // end nav bar

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[
      homeScreenContent(context),
      myOrderContent(context),
      myFavoriteContent(context),
      myProfileContent(context),
    ];
    Color getPrefixIconColor() {
      return _searchFocusNode.hasFocus
          ? Theme.of(context).primaryColor
          : colorConstant.greyColor;
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Theme(
          data: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            cursorColor: Theme.of(context).primaryColor,
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: null,
            title: Column(
              children: [
                SizedBox(
                  height: 40.0,
                  child: TextFormField(
                    controller: _searchController,
                    focusNode: _searchFocusNode,
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: getPrefixIconColor(),
                      ),
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
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: colorConstant.primaryColor,
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
        ),
      ),
      body: WillPopScope(
          child: _widgetOptions.elementAt(_selectedIndex),
          onWillPop: onWillPop),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_paste),
            label: 'My Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: colorConstant.greyColor,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(msg: "double tap to back");
      return Future.value(false);
    }
    return Future.value(true);
  }
}
