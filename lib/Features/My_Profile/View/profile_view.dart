import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:bazar/Features/My_Profile/Widgets/Profile_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class profile_view extends StatelessWidget {
  const profile_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              GoRouter.of(context).push(edit_view_rout);
            },
            child: const Text(
              "Edit",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: const profile_body(),
    );
  }
}
