import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_TextField.dart';
import 'package:bazar/Features/Check_Out/Widgets/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class address_body extends StatelessWidget {
  const address_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Add Your Address",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const country_picker(),
            const SizedBox(height: 20),
            const Text(
              "Full Name",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Custom_TextField(
              enabled: true,
              hinttxt: "Full Name",
              prefixcolor: Colors.grey,
              icon: Icons.person_sharp,
            ),
            const SizedBox(height: 20),
            const Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Custom_TextField(
              enabled: true,
              hinttxt: "Phone Number",
              prefixcolor: Colors.grey,
              icon: Icons.phone,
            ),
            const SizedBox(height: 20),
            const Text(
              "City",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Custom_TextField(
              enabled: true,
              hinttxt: "Your City",
              prefixcolor: Colors.grey,
              icon: Icons.location_city,
            ),
            const SizedBox(height: 20),
            const Text(
              "Full Address",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Custom_TextField(
              enabled: true,
              hinttxt: "street address or building, floor, etc..",
              prefixcolor: Colors.grey,
              icon: Icons.bungalow_outlined,
            ),
            const SizedBox(height: 20),
            Custom_Button(
              txt: "Confirm",
              onTap: () {
                GoRouter.of(context).pop();
              },
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
