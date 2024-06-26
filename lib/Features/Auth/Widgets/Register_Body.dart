import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_Google_Button.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_TextField.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_Title_TextField.dart';
import 'package:bazar/Features/Auth/Widgets/have_account_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Register_Body extends StatelessWidget {
  Register_Body({super.key});
  final GlobalKey<FormState> mykey = GlobalKey<FormState>();
  late String Name;
  late String Email;
  late String Passowrd;

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
                const SizedBox(height: 68),
                const Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  'Start Shopping With Create Your Account',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Titl_Textfield(
                    txt: "Username",
                  ),
                ),
                Custom_TextField(
                  onChanged: (value) {
                    Name = value;
                    print(Name);
                  },
                  enabled: true,
                  prefixcolor: Colors.deepPurple.shade100,
                  icon: Icons.person,
                  hinttxt: 'Create Your Username',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
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
                    print(Email);
                  },
                  enabled: true,
                  prefixcolor: Colors.deepPurple.shade100,
                  icon: Icons.email,
                  hinttxt: 'Enter You Email',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    } else if (!(value.contains('@gmail.com'))) {
                      return "@gmail.com Required";
                    }
                    return null;
                  },
                ),
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
                    Passowrd = value;
                    print(Passowrd);
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    } else if (value.length < 6) {
                      return "Password must be More than [6] charters";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Custom_Button(
                  txt: 'Create Accont',
                  onTap: () async {
                    if (mykey.currentState!.validate()) {
                      try {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: Email,
                          password: Passowrd,
                        );

                        print("Success ___________");
                        GoRouter.of(context).pushReplacement("/");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      } catch (e) {
                        print(e);
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
                have_account_button(
                  onTap: () {
                    GoRouter.of(context).push(login_view_rout);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
