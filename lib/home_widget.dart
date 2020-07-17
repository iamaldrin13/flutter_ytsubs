import 'package:flutter/material.dart';
import 'package:flutter_ytsubs/Pages/pages.dart';
import 'package:flutter_ytsubs/Views/home_view.dart';

class Home extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
    }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    CampaignPage(),
    SubscribePage()
  ];


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Center(child: Text("YT Subs")),
    ),
    body: _children[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      items: [
          BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text("Home")
          ),
          BottomNavigationBarItem(
          icon: new Icon(Icons.explore),
          title: new Text("Campaign")
          ),BottomNavigationBarItem(
          icon: new Icon(Icons.subscriptions),
          title: new Text("Subscribe")
          ),
          
      ]
    ),
  );
}

void onTabTapped(int index) {
  setState(() {
    _currentIndex = index;
  });
}

}