import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details_button extends StatelessWidget {
  const details_button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(),
      ),
      child: const Center(
        child: Text(
          "Details",
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
