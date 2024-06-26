import 'package:flutter/material.dart';

class Desc_Text extends StatelessWidget {
  const Desc_Text({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 21,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
