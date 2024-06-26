import 'package:bazar/Features/Auth/Widgets/Desc_Text.dart';
import 'package:bazar/Features/Auth/Widgets/Image_Box.dart';
import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  const ImageTile({
    super.key,
    required this.text,
    required this.image,
  });
  final AssetImage image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image_Box(image: image),
          const SizedBox(height: 20),
          Desc_Text(text: text),
        ],
      ),
    );
  }
}
