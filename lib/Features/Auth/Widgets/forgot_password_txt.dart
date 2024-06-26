import 'package:bazar/Core/Utils/Constants.dart';
import 'package:flutter/material.dart';

class forgot_passrod_txt extends StatelessWidget {
  const forgot_passrod_txt({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot Password?",
            style: TextStyle(
              color: Color(kBrimary_Color),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
