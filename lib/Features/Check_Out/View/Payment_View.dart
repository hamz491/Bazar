import 'package:bazar/Features/Check_Out/Widgets/Payment_Body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Payment_View extends StatelessWidget {
  const Payment_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        title: const Text("Payment"),
        centerTitle: true,
      ),
      body: const Payment_Body(),
    );
  }
}
