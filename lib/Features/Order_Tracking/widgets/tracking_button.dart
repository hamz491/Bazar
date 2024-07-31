import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class tracking_button extends StatelessWidget {
  const tracking_button({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(stepper_view_rout);
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.deepPurple[400],
        ),
        child: const Center(
          child: Text(
            "Tracking",
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}
