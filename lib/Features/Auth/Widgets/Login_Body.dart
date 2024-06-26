import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Auth/Widgets/EmilAuth_BottomSheet.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_Google_Button.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_TextField.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_Title_TextField.dart';
import 'package:bazar/Features/Auth/Widgets/forgot_password_txt.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Login_Body extends StatelessWidget {
  Login_Body({super.key});
  late String Email;
  late String Password;
  final mykey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: mykey,
      autovalidateMode: AutovalidateMode.always,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                const Text(
                  'Login Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Please login with registered  Account',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Titl_Textfield(
                    txt: "Email ",
                  ),
                ),
                Custom_TextField(
                  onChanged: (value) {
                    Email = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    } else if (!(value.contains('@gmail.com'))) {
                      return "@gmail.com Required";
                    }
                    return null;
                  },
                  enabled: true,
                  prefixcolor: Colors.deepPurple.shade100,
                  icon: Icons.email,
                  hinttxt: 'Enter You Email',
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Titl_Textfield(
                    txt: "Password",
                  ),
                ),
                Custom_TextField(
                  onChanged: (value) {
                    Password = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    } else if (value.length < 6) {
                      return "Password must be More than [6] charters";
                    }
                    return null;
                  },
                  enabled: true,
                  prefixcolor: Colors.deepPurple.shade100,
                  Suffix: const Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.grey,
                    size: 27,
                  ),
                  icon: Icons.password,
                  hinttxt: 'Create Your Password',
                ),
                forgot_passrod_txt(
                  onTap: () async {
                    await EmailAuth_BottomSheet(context);
                  },
                ),
                const SizedBox(height: 30),
                Custom_Button(
                  txt: 'Sign In',
                  onTap: () async {
                    if (mykey.currentState!.validate()) {
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: Email,
                          password: Password,
                        );
                        print("Success ___________");
                        GoRouter.of(context).pushReplacement("/");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        } else {
                          print(e.code);
                        }
                      }
                    }
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Or using other method",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Google_Button(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
