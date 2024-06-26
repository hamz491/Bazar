import 'package:flutter/material.dart';

class Google_Button extends StatelessWidget {
  const Google_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.grey.shade400,
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Image.asset(
              'Assets/images/google.png',
              scale: 1.4,
            ),
          ),
          const Text(
            "Sign Up With Google",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
