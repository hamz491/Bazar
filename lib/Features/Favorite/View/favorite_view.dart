import 'package:bazar/Features/Favorite/Widgets/favorite_body.dart';
import 'package:flutter/material.dart';

class favorive extends StatelessWidget {
  const favorive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: const Text("My Favorite"),
        centerTitle: true,
      ),
      body: const favorite_body(),
    );
  }
}
