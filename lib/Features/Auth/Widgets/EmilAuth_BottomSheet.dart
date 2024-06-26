import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_TextField.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_Title_TextField.dart';
import 'package:bazar/Features/Auth/Widgets/ResetPassword_BottomSheet.dart';
import 'package:flutter/material.dart';

Future<dynamic> EmailAuth_BottomSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    enableDrag: true,
    constraints: const BoxConstraints(),
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: SizedBox(
          height: (MediaQuery.of(context).size.height * .4) +
              MediaQuery.of(context).viewInsets.bottom,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Forgot Password',
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
                  txt: "Email For Reset ",
                ),
              ),
              Custom_TextField(
                enabled: true,
                prefixcolor: Colors.deepPurple.shade100,
                icon: Icons.email,
                Suffix: const Icon(
                  Icons.done_outline_rounded,
                  color: Colors.green,
                  size: 28,
                ),
                hinttxt: 'Enter You Email',
              ),
              const SizedBox(height: 30),
              Custom_Button(
                txt: 'Check Email',
                onTap: () {
                  ResetPassword_BottomSheet(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
