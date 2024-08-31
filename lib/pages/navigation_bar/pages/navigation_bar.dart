
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      bottomNavigationBar: SafeArea(
        child: CupertinoTabBar(
          activeColor: Colors.black,
          inactiveColor: Colors.black,
          onTap: (index) {
            context.read<MainViewModel>().onTapNavBar(index);
          },
          currentIndex: 0,//context.watch<HomeViewModel>().currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.icHome,
              ),
              // activeIcon: Image.asset(
              //   'AppIcons.',
              // ),
              label: 'Asosiy',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.icFavorite,
              ),
              // activeIcon: Image.asset(
              //   'AppIcons.',
              // ),
              label: 'Saqlanganar',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.icAdd,
              ),
              // activeIcon: Image.asset(
              //   'AppIcons.createSelect,'
              // ),
              label: "Qo'shish",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.icProfile,
              ),
              // activeIcon: Image.asset(
              //   'AppIcons.notificationsSelect,'
              // ),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
