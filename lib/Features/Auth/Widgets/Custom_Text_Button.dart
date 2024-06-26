import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Custom_Text_Button extends StatelessWidget {
  const Custom_Text_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(login_view_rout);
      },
      child: const Text(
        "Already Have An Account",
        style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
