import 'package:flutter/material.dart';

class Titl_Textfield extends StatelessWidget {
  const Titl_Textfield({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 23,
      ),
    );
  }
}
