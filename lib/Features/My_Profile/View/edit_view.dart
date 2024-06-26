import 'package:bazar/Features/My_Profile/Widgets/edit_body.dart';
import 'package:flutter/material.dart';

class edit_view extends StatelessWidget {
  const edit_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        centerTitle: true,
      ),
      body: const edit_body(),
    );
  }
}
