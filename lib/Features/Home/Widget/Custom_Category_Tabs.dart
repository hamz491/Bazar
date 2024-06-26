import 'package:flutter/material.dart';

class Custom_Category_Tabs extends StatelessWidget {
  const Custom_Category_Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      dividerColor: Colors.transparent,
      unselectedLabelColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [
        Tab(
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Home',
              style: TextStyle(
                fontSize: 21,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Tab(
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Category',
              style: TextStyle(fontSize: 21),
            ),
          ),
        ),
      ],
    );
  }
}
