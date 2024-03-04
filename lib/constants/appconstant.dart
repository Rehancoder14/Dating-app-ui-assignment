import 'package:flutter/material.dart';

final List<BottomNavigationBarItem> bottomBarItems = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.favorite_outline),
    activeIcon: Icon(Icons.favorite_rounded),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.search),
    activeIcon: Icon(Icons.search_rounded),
    label: 'Search',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.person_outline),
    activeIcon: Icon(Icons.person),
    label: "Profile",
  ),
];
