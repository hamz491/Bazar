import 'package:bazar/Features/Check_Out/Widgets/add_new_card_body.dart';
import 'package:flutter/material.dart';

class add_new_card extends StatelessWidget {
  const add_new_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Card'),
        centerTitle: true,
      ),
      body: const add_new_card_body(),
    );
  }
}
