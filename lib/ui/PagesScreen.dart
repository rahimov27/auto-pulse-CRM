// ignore_for_file: deprecated_member_use

import 'package:auto_pulse_crm/ui/HomePageScreen.dart';
import 'package:auto_pulse_crm/ui/MapScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PagesScreen extends StatefulWidget {
  const PagesScreen({super.key});

  @override
  State<PagesScreen> createState() => _MyNavState();
}

class _MyNavState extends State<PagesScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const MapScreen(),
    const MapScreen(),
    const MapScreen(),
    const MapScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensure fixed type
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xFF1463FF), // Active item color
        unselectedItemColor:
            const Color(0xFF9499A1).withOpacity(0.80), // Inactive item color
        selectedLabelStyle:
            const TextStyle(color: Color(0xFF1463FF)), // Active label style
        unselectedLabelStyle: TextStyle(
            color: const Color(0xFF9499A1)
                .withOpacity(0.80)), // Inactive label style
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            activeIcon: SvgPicture.asset(
              '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/bottom-nav-svg/Home-active.svg',
              color: const Color(0xFF1463FF), // Active icon color
            ),
            icon: SvgPicture.asset(
              '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/bottom-nav-svg/Home.svg',
              color: const Color(0xFF9499A1)
                  .withOpacity(0.80), // Inactive icon color
            ),
          ),
          BottomNavigationBarItem(
            label: "Map",
            activeIcon: SvgPicture.asset(
              '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/bottom-nav-svg/Location-active.svg',
              color: const Color(0xFF1463FF), // Active icon color
            ),
            icon: SvgPicture.asset(
              '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/bottom-nav-svg/Location.svg',
              color: const Color(0xFF9499A1)
                  .withOpacity(0.80), // Inactive icon color
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            activeIcon: SvgPicture.asset(
              '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/bottom-nav-svg/Search-active.svg',
              color: const Color(0xFF1463FF), // Active icon color
            ),
            icon: SvgPicture.asset(
              '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/bottom-nav-svg/Search.svg',
              color: const Color(0xFF9499A1)
                  .withOpacity(0.80), // Inactive icon color
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            activeIcon: SvgPicture.asset(
              '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/bottom-nav-svg/Profile-active.svg',
              color: const Color(0xFF1463FF), // Active icon color
            ),
            icon: SvgPicture.asset(
              '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/bottom-nav-svg/Profile.svg',
              color: const Color(0xFF9499A1)
                  .withOpacity(0.80), // Inactive icon color
            ),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            activeIcon: SvgPicture.asset(
              '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/bottom-nav-svg/Setting-active.svg',
              color: const Color(0xFF1463FF), // Active icon color
            ),
            icon: SvgPicture.asset(
              '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/bottom-nav-svg/Setting.svg',
              color: const Color(0xFF9499A1)
                  .withOpacity(0.80), // Inactive icon color
            ),
          ),
        ],
      ),
    );
  }
}
