import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Custom_AppBar extends StatelessWidget {
  const Custom_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.deepPurple[200],
              maxRadius: 35,
              child: SvgPicture.asset("Assets/Icons/face.svg"),
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi,Hamza",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Let's go shopping",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(search_view_rout);
              },
              child: const Icon(
                FontAwesomeIcons.search,
                size: 27,
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                size: 33,
              ),
              onPressed: () {
                GoRouter.of(context).push(Cart_view_rout);
              },
            ),
          ],
        ),
      ],
    );
  }
}
