import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions;
  const MyTabBar({super.key, required this.tabOptions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // tab bar
        TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs: [
              Text(tabOptions[0][0]),
              Text(tabOptions[1][0]),
              Text(tabOptions[2][0])
            ]),
        Expanded(
          child: TabBarView(children: [
            tabOptions[0][1],
            tabOptions[1][1],
            tabOptions[2][1],
          ]),
        )
      ],
    );
  }
}
