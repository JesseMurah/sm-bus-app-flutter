import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:my_app/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 1;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile")
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      //Center
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_home_regular,
                //color: Colors.blue,
                size: 30,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_search_info_regular,
                //color: Colors.blue,
                size: 30,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_info_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_ticket_regular,
                //color: Colors.blue,
                size: 30,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_person_regular,
                //color: Colors.blue,
                size: 30,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
