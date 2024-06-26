import 'package:flutter/material.dart';

class custom_counter extends StatefulWidget {
  const custom_counter({super.key});

  @override
  State<custom_counter> createState() => _custom_counterState();
}

class _custom_counterState extends State<custom_counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .34,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(
                () {
                  if (counter > 0) {
                    counter--;
                  }
                },
              );
            },
            child: const CircleAvatar(
              maxRadius: 15,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.remove,
                size: 24,
              ),
            ),
          ),
          Text(
            '$counter',
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  counter++;
                },
              );
            },
            child: const CircleAvatar(
              maxRadius: 15,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
