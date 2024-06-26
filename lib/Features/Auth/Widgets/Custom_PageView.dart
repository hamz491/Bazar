import 'package:bazar/Features/Auth/Widgets/firstView_imageTile.dart';
import 'package:flutter/material.dart';

class Custom_PageView extends StatefulWidget {
  const Custom_PageView({
    super.key,
    required this.mycontrol,
  });

  final PageController mycontrol;

  @override
  State<Custom_PageView> createState() => _Custom_PageViewState();
}

class _Custom_PageViewState extends State<Custom_PageView> {
  late AssetImage image1;
  late AssetImage image2;
  late AssetImage image3;
  @override
  void initState() {
    image1 = const AssetImage('Assets/images/1.jpg');
    image2 = const AssetImage('Assets/images/2.jpg');
    image3 = const AssetImage('Assets/images/3.jpg');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.mycontrol,
      children: [
        ImageTile(
          image: image1,
          text: "Various Collection Of The Latest Products",
        ),
        ImageTile(
          image: image2,
          text: "Complete Collection Of Colors And Sizes",
        ),
        ImageTile(
          image: image3,
          text: "Find The Most Suitable Outfit For You",
        ),
      ],
    );
  }
}
