import 'package:bazar/Features/Auth/Widgets/Custom_PageView.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Custom_Slider extends StatelessWidget {
  const Custom_Slider({super.key});

  @override
  Widget build(BuildContext context) {
    PageController mycontrol = PageController();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        children: [
          Expanded(
            child: Custom_PageView(
              mycontrol: mycontrol,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SmoothPageIndicator(
              controller: mycontrol,
              count: 3,
            ),
          ),
        ],
      ),
    );
  }
}
