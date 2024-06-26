import 'package:flutter/material.dart';

class completed_tile extends StatelessWidget {
  const completed_tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "Completed",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
