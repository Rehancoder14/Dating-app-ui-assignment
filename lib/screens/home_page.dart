import 'package:assignment/constants/appconstant.dart';
import 'package:assignment/screens/matches.dart';
import 'package:assignment/screens/profile_page.dart';
import 'package:assignment/screens/search_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  double start = 0;

  final List<Widget> _children = [
    const Matches(),
    const SearchPage(),
    const ProfilePage(
      userList: null,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _children[_currentIndex],
          AnimatedPositionedDirectional(
            bottom: 0,
            start: start,
            duration: const Duration(milliseconds: 200),
            child: Container(
              color: Theme.of(context).primaryColor,
              height: 2,
              width: MediaQuery.of(context).size.width / 3,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 20.0,
        type: BottomNavigationBarType.fixed,
        iconSize: 22.0,
        selectedItemColor: Theme.of(context).primaryColor,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        unselectedItemColor: Theme.of(context).disabledColor,
        items: bottomBarItems,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            start = MediaQuery.of(context).size.width *
                index /
                bottomBarItems.length;
          });
        },
      ),
    );
  }
}
