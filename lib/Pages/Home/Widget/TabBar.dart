import 'package:flutter/material.dart';

myTabBar(TabController tabController, BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(60),
    child: TabBar(
      controller: tabController,
      indicatorWeight: 4,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: Theme.of(context).textTheme.bodyLarge,
      unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
      tabs: const [
        Tab(
          text: "المحادثات",
        ),
        Tab(
          text: "المجموعات",
        ),
        Tab(
          text: "المكالمات",
        ),
      ],
    ),
  );
}
