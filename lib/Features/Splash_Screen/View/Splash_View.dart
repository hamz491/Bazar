import 'package:bazar/Core/Utils/Constants.dart';
import 'package:bazar/Features/Splash_Screen/Widgets/Splash_Body.dart';
import 'package:flutter/material.dart';

class Splash_View extends StatelessWidget {
  const Splash_View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(kBrimary_Color),
      body: Splash_Body(),
    );
  }
}
