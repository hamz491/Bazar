import 'package:bazar/Features/Home/Widget/Category_Tabs_Body.dart';
import 'package:bazar/Features/Home/Widget/Custom_AppBar.dart';
import 'package:bazar/Features/Home/Widget/Custom_Category_Tabs.dart';
import 'package:flutter/material.dart';

class home_details extends StatelessWidget {
  const home_details({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 60),
          Custom_AppBar(),
          SizedBox(height: 20),
          Custom_Category_Tabs(),
          SizedBox(height: 5),
          Expanded(
            child: Category_Tabs_body(),
          ),
        ],
      ),
    );
  }
}
