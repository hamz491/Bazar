import 'package:bazar/Features/Auth/Widgets/Custom_TextField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Search_Body extends StatelessWidget {
  const Search_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, right: 10, left: 5),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 30,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Custom_TextField(
                  hinttxt: 'Search',
                  icon: FontAwesomeIcons.search,
                  prefixcolor: Colors.black,
                  enabled: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
