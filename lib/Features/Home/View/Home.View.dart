import 'package:bazar/Features/Home/Widget/Custom_Nav_Bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Custom_Nav_Bar(),
      ),
    );
  }
}
