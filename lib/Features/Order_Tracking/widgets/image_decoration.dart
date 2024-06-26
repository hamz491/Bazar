import 'package:flutter/material.dart';

class image_decoration extends StatelessWidget {
  const image_decoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage("Assets/images/3.jpg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
