import 'package:flutter/material.dart';

class on_progress_tile extends StatelessWidget {
  const on_progress_tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.cyan,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "On Progress",
          style: TextStyle(
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
