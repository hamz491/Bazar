import 'package:bazar/Features/Home/Widget/Category_Builder.dart';
import 'package:bazar/Features/Home/Widget/Home_Builder.dart';
import 'package:flutter/material.dart';

class Category_Tabs_body extends StatefulWidget {
  const Category_Tabs_body({super.key});

  @override
  State<Category_Tabs_body> createState() => _Category_Tabs_bodyState();
}

class _Category_Tabs_bodyState extends State<Category_Tabs_body> {
  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        Home_Builder(),
        Category_Builder(n: 4),
      ],
    );
  }
}
