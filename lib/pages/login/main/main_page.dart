import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silent_moon/pages/login/main/bottom_navbar_pages/home_page.dart';
import 'package:silent_moon/pages/login/main/bottom_navbar_pages/meditate_page.dart';
import 'package:silent_moon/pages/login/main/bottom_navbar_pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final List<Widget> widgets = [
    HomePage(),
    Container(),
    MeditatePage(),
    Container(),
    MePage(),
  ];
  final List<_NavItem> items = [
    _NavItem('assets/icons/home.svg', 'Home'),
    _NavItem('assets/icons/moon.svg', 'Sleep'),
    _NavItem('assets/icons/meditate.svg', 'Meditate'),
    _NavItem('assets/icons/music.svg', 'Music'),
    _NavItem('assets/icons/person.svg', 'Afsar'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: widgets[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF8E97FD),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items:
              items.map((item) {
                int index = items.indexOf(item);
                bool isActive = index == currentIndex;
                return BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: isActive ? Color(0xFF8E97FD) : Colors.transparent,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: SvgPicture.asset(
                      item.iconPath,
                      width: 24,
                      height: 24,
                      color: isActive ? Colors.white : Colors.grey,
                    ),
                  ),
                  label: item.label,
                );
              }).toList(),
        ),
      ),
    );
  }
}

class _NavItem {
  final String iconPath;
  final String label;

  _NavItem(this.iconPath, this.label);
}
