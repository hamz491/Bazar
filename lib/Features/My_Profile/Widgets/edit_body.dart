import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_TextField.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class edit_body extends StatelessWidget {
  const edit_body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Username",
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 10),
            const Custom_TextField(
              hinttxt: "Username",
              prefixcolor: Color.fromARGB(255, 100, 73, 82),
              icon: Icons.person,
              initialValue: "Hamza Hegazy",
              enabled: true,
            ),
            const SizedBox(height: 20),
            const Text(
              "Email",
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 10),
            const Custom_TextField(
              hinttxt: "Email",
              prefixcolor: Color.fromARGB(255, 100, 73, 82),
              icon: Icons.email,
              initialValue: "hamzahegazy669@gmail.com",
              enabled: true,
            ),
            const SizedBox(height: 20),
            const Text(
              "Password",
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 10),
            const Custom_TextField(
              hinttxt: "Password",
              prefixcolor: Color.fromARGB(255, 100, 73, 82),
              icon: Icons.password,
              initialValue: "**************",
              enabled: true,
            ),
            const SizedBox(height: 30),
            Custom_Button(
              txt: "Save",
              Ncolor: Colors.deepPurple[400],
              onTap: () {
                GoRouter.of(context).pop();
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
