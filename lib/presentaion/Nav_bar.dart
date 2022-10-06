import 'package:applogicq/presentaion/home_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  List<BottomNavigationBarItem> navItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "second"),
    BottomNavigationBarItem(
        icon: Icon(Icons.private_connectivity_rounded), label: "third"),
    BottomNavigationBarItem(
        icon: Icon(Icons.payment_outlined), label: "fourth"),
    BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today_rounded), label: "fivth")
  ];

  List<Widget> pages = [
    HomePage(),
    Center(child: Icon(Icons.food_bank)),
    Center(
      child: Icon(Icons.private_connectivity_rounded),
    ),
    Center(child: Icon(Icons.payment_outlined)),
    Center(child: Icon(Icons.calendar_today_rounded)),
  ];

  void onTapFunc(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      bottomNavigationBar: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: onTapFunc,
          currentIndex: selectedIndex,
          items: navItems,
          selectedItemColor: Color.fromARGB(255, 126, 0, 149),
          unselectedItemColor: Color.fromARGB(255, 164, 158, 165),
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
