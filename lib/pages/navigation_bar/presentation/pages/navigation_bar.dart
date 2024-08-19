
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/app_icons.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key, required this.child});

  final Widget child;

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: CupertinoTabBar(
        activeColor: Colors.black,
        inactiveColor: Colors.black,
        onTap: (index) {
          // context.read<HomeViewModel>().onTapNavBar(index);
        },
        currentIndex: 0,//context.watch<HomeViewModel>().currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.growUnselect,
            ),
            activeIcon: Image.asset(
              AppIcons.growSelect,
            ),
            label: 'Grow',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcons.discoverUnselect,
            ),
            activeIcon: Image.asset(
              AppIcons.discoverSelect,
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcons.createUnselect,
            ),
            activeIcon: Image.asset(
              AppIcons.createSelect,
            ),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcons.notificationsUnselect,
            ),
            activeIcon: Image.asset(
              AppIcons.notificationsSelect,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcons.teamUnselect,
            ),
            activeIcon: Image.asset(
              AppIcons.teamSelect,
            ),
            label: 'Team',
          ),
        ],
      ),
    );
  }
}
