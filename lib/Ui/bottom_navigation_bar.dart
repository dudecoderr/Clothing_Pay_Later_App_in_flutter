import 'package:flutter/material.dart';

import '../Ui/HomePage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int current_index = 0;
  final List<Widget> pages = [
    const HomePage(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];

  void OnTapped(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: current_index,
        children: pages,
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            iconSize: 25.0,
            selectedIconTheme: const IconThemeData(size: 28.0),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            currentIndex: current_index,
            onTap: OnTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_mall),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              ),
            ]),
      ),
    );
  }
}
