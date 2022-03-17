import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomBottomNavBar(),
    );
  }
}

class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

int currentIndex = 0;

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/svg/ghost.svg',
                color: const Color(0xff22A2BD),
              ),
              icon: SvgPicture.asset('assets/svg/ghost.svg'),
              label: 'Персонажи'),
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/svg/globe.svg',
                color: const Color(0xff22A2BD),
              ),
              icon: SvgPicture.asset('assets/svg/globe.svg'),
              label: 'Локации'),
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/svg/screen.svg',
                color: const Color(0xff22A2BD),
              ),
              icon: SvgPicture.asset('assets/svg/screen.svg'),
              label: 'Эпизоды'),
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/svg/gear.svg',
                color: const Color(0xff22A2BD),
              ),
              icon: SvgPicture.asset('assets/svg/gear.svg'),
              label: 'Настройки')
        ],
        selectedItemColor: const Color(0xff22A2BD),
        unselectedItemColor: const Color(0xffBDBDBD),
        currentIndex: currentIndex,
        showUnselectedLabels: true,
      ),
    );
  }
}
