import 'package:flutter/material.dart';
import 'package:login_twisun/home/tabs/display_charts.dart';
import 'tabs/display.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twisun App'),
        bottom: getTabBar(),
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.grey),
          child: getTabBarView(<Widget>[
            DisplayWidget('assets/Logo01.png', 'News Site'),
            DisplayWidget('assets/Logo02.png', 'My Twizzy data'),
            DisplayCharts('assets/Logo01.png', 'Analythics of My Twizzy'),
          ])),
    );
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(icon: Icon(Icons.looks_one)),
        Tab(icon: Icon(Icons.looks_two)),
        Tab(icon: Icon(Icons.looks_3)),
      ],
      controller: _controller,
    );
  }

  TabBarView getTabBarView(var displays) {
    return TabBarView(
      children: displays,
      controller: _controller,
    );
  }
}
