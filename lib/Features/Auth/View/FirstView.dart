import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_Indicator.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_Text_Button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          const Expanded(child: Custom_Slider()),
          Custom_Button(
            txt: "Create Account",
            onTap: () {
              GoRouter.of(context).push(register_rout);
            },
          ),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 36,
              top: 10,
            ),
            child: Custom_Text_Button(),
          ),
        ],
      ),
    );
  }
}
