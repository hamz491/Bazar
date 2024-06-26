import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  const Custom_Button({
    super.key,
    this.onTap,
    required this.txt,
    this.Ncolor,
    this.Tcolor,
  });
  final void Function()? onTap;
  final String txt;
  final Color? Ncolor;
  final Color? Tcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Ncolor ?? Colors.deepPurple,
        ),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
              color: Tcolor ?? Colors.white,
              fontSize: 21,
            ),
          ),
        ),
      ),
    );
  }
}
