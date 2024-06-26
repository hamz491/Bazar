import 'package:flutter/material.dart';

class Image_Box extends StatelessWidget {
  const Image_Box({
    super.key,
    required this.image,
  });

  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          filterQuality: FilterQuality.high,
          fit: BoxFit.fill,
          image: image,
        ),
      ),
    );
  }
}
