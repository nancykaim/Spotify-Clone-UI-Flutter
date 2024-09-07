// ignore_for_file: unused_import, implementation_imports, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zpottyfi/views/home.dart';
import 'package:zpottyfi/views/library.dart';
import 'package:zpottyfi/views/profile.dart';
import 'package:zpottyfi/views/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: "Your Library"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: Stack(children: [
        renderView(
          0,
          const HomeView(),
        ),
        renderView(
          1,
          const SearchView(),
        ),
        renderView(
          2,
          const LibraryView(),
        ),
        renderView(
          3,
          const ProfileView(),
        ),
      ]),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
        ignoring: _selectedTab != tabIndex,
        child: Opacity(opacity: _selectedTab == tabIndex ? 1 : 0, child: view));
  }
}
