import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splash_Body extends StatefulWidget {
  const Splash_Body({super.key});

  @override
  State<Splash_Body> createState() => _Splash_BodyState();
}

class _Splash_BodyState extends State<Splash_Body> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(kfirestview);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Bazar",
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Any shopping just from home",
            style: TextStyle(fontSize: 19),
          ),
        ],
      ),
    );
  }
}
