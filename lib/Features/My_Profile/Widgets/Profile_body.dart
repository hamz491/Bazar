import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_TextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class profile_body extends StatelessWidget {
  const profile_body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                maxRadius: 55,
                child: SvgPicture.asset("Assets/Icons/face.svg"),
              ),
            ),
            const SizedBox(height: 25),
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
              enabled: false,
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
              enabled: false,
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
              enabled: false,
            ),
            const SizedBox(height: 10),
            Custom_Button(
              txt: "Sign Out",
              Ncolor: Colors.red[400],
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                print("sign out");
                GoRouter.of(context).pushReplacement(register_rout);
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
