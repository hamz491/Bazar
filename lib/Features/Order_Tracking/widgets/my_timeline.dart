import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class my_timeline extends StatelessWidget {
  const my_timeline({
    super.key,
    required this.title,
    required this.isFirst,
    required this.isLast,
    required this.isDone,
  });
  final String title;
  final bool isFirst;
  final bool isLast;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        endChild: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: isDone ? Colors.black : Colors.grey.shade800,
            ),
          ),
        ),
        beforeLineStyle: isDone
            ? const LineStyle(color: Colors.black)
            : const LineStyle(color: Colors.grey),
        indicatorStyle: IndicatorStyle(
          color: isDone ? Colors.black : Colors.grey,
          iconStyle: IconStyle(iconData: Icons.done, color: Colors.white),
          width: 40,
        ),
        afterLineStyle: isDone
            ? const LineStyle(color: Colors.black)
            : const LineStyle(color: Colors.grey),
      ),
    );
  }
}
