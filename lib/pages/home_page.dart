import 'package:flutter/material.dart';
import 'package:nft_app_ui/components/my_appBar.dart';
import 'package:nft_app_ui/components/my_bottom_appBar.dart';
import 'package:nft_app_ui/theme/glass_box.dart';
import '../components/my_tabBar.dart';
import '../tabs/recent_tab.dart';
import '../tabs/trending_tab.dart';
import '../tabs/top_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _searchButtonTapped() {}

  List tabOptions = [
    ["Recent", const RecentTab()],
    ["Trending", const TrendingTab()],
    ["Top", const TopTab()],
  ];

  int _currentBottomIndex = 0;

  void _handleBottomAppBar(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: GlassBox(
            child: MyBottomBar(
                index: _currentBottomIndex, onTap: _handleBottomAppBar)),
        backgroundColor: Colors.grey[300],
        body: ListView(children: [
          MyAppBar(title: 'Explore Collections', onTap: _searchButtonTapped),
          SizedBox(height: 600, child: MyTabBar(tabOptions: tabOptions)),
        ]),
      ),
    );
  }
}
