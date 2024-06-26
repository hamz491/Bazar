import 'package:flutter/material.dart';

class tab_bar extends StatelessWidget {
  const tab_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey.shade500,
      tabs: const [
        Tab(
          icon: Text(
            "My Order",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Tab(
          icon: Text(
            "History",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
