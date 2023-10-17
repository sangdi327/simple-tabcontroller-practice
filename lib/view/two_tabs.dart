import 'package:flutter/material.dart';

class TwoTabs extends StatefulWidget {
  const TwoTabs({super.key});

  @override
  State<TwoTabs> createState() => _TwoTabsState();
}

class _TwoTabsState extends State<TwoTabs> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two tabs'),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.settings)),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Center(
            child: Text(
              'Home',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'settings',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
