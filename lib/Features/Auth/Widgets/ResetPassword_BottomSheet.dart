import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_TextField.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_Title_TextField.dart';
import 'package:flutter/material.dart';

Future<dynamic> ResetPassword_BottomSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    enableDrag: true,
    constraints: const BoxConstraints(),
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: SizedBox(
          height: (MediaQuery.of(context).size.height * .55) +
              MediaQuery.of(context).viewInsets.bottom,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create New Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),
                const Text(
                  'Enter Your Email For Reset',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Titl_Textfield(
                    txt: "New Password",
                  ),
                ),
                Custom_TextField(
                  enabled: true,
                  prefixcolor: Colors.deepPurple.shade100,
                  icon: Icons.password,
                  Suffix: const Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  hinttxt: 'Enter You Password',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Titl_Textfield(
                    txt: "Confirm Password",
                  ),
                ),
                Custom_TextField(
                  enabled: true,
                  prefixcolor: Colors.deepPurple.shade100,
                  icon: Icons.password,
                  Suffix: const Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  hinttxt: 'Confirm You Password',
                ),
                const SizedBox(height: 30),
                const Custom_Button(
                  txt: 'Reset Password',
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
