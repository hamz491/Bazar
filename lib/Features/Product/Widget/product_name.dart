import 'package:flutter/material.dart';

class product_name extends StatefulWidget {
  const product_name({super.key, this.title});
  final String? title;
  @override
  State<product_name> createState() => _product_nameState();
}

class _product_nameState extends State<product_name> {
  bool x = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${widget.title}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 24,
                ),
                SizedBox(width: 4),
                Text(
                  '4.8',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 4),
                Text("(320 Review)")
              ],
            ),
          ],
        ),
      ],
    );
  }
}
