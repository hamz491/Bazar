import 'package:bazar/Features/Favorite/View/favorite_view.dart';
import 'package:bazar/Features/Home/Widget/home_details.dart';
import 'package:bazar/Features/My_Profile/View/profile_view.dart';
import 'package:bazar/Features/Order_Tracking/view/my_order_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Custom_Nav_Bar extends StatefulWidget {
  const Custom_Nav_Bar({super.key});

  @override
  State<Custom_Nav_Bar> createState() => _Custom_Nav_BarState();
}

class _Custom_Nav_BarState extends State<Custom_Nav_Bar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    home_details(),
    my_order_view(),
    favorive(),
    profile_view(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //View Body
      body: _widgetOptions.elementAt(_selectedIndex),
      // Custom Nav Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              selectedIndex: _selectedIndex,
              onTabChange: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              backgroundColor: Colors.white,
              color: Colors.grey.shade700,
              activeColor: Colors.deepPurple.shade400,
              gap: 3,
              tabBackgroundColor: Colors.deepPurple.shade100,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              // tabMargin: const EdgeInsets.symmetric(vertical: 6),
              tabs: const [
                GButton(
                  icon: FontAwesomeIcons.house,
                  text: 'Home',
                ),
                GButton(
                  icon: FontAwesomeIcons.truckFast,
                  text: 'My Order',
                ),
                GButton(
                  icon: FontAwesomeIcons.solidHeart,
                  text: 'Favorite',
                ),
                GButton(
                  icon: FontAwesomeIcons.solidUser,
                  text: 'My Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
