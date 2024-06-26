import 'package:bazar/Features/Check_Out/Widgets/address_body.dart';
import 'package:flutter/material.dart';

class Address_View extends StatelessWidget {
  const Address_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Address'),
        centerTitle: true,
      ),
      body: const address_body(),
    );
  }
}
