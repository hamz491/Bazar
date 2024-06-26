import 'package:bazar/Features/Order_Tracking/widgets/completed_tile.dart';
import 'package:bazar/Features/Order_Tracking/widgets/details_button.dart';
import 'package:bazar/Features/Order_Tracking/widgets/image_decoration.dart';
import 'package:bazar/Features/Order_Tracking/widgets/on_progress_tile.dart';
import 'package:bazar/Features/Order_Tracking/widgets/tracking_button.dart';
import 'package:flutter/material.dart';

class product_ckeckout_tile extends StatelessWidget {
  const product_ckeckout_tile({super.key, required this.x});
  final bool x;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const image_decoration(),
                const SizedBox(width: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text(
                        "Bix Bag Limitid",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Color: brown",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Qty: 1",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    x ? const on_progress_tile() : const completed_tile(),
                    const SizedBox(height: 15),
                    const Text(
                      "24.00 \$",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Expanded(
                  child: details_button(),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: tracking_button(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
