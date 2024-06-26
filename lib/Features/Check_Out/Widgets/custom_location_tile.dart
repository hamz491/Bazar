import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class custom_location_tile extends StatelessWidget {
  const custom_location_tile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(address_page_rout);
      },
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(),
          image: const DecorationImage(
            image: AssetImage('Assets/images/location.jpg'),
            fit: BoxFit.fitWidth,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
