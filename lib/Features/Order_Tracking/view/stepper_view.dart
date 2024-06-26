import 'package:bazar/Features/Order_Tracking/widgets/stepper_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class stepper_view extends StatelessWidget {
  const stepper_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(.2),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 24,
              ),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
          ),
        ),
      ),
      body: const stepper_body(),
    );
  }
}
