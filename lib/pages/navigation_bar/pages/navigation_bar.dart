
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kelishamiz/core/extension/context_extension.dart';
import 'package:kelishamiz/core/widgets/app_bar.dart';
import 'package:kelishamiz/router/router.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_icons.dart';
import '../../main/view_model/main_view_model.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key, required this.child});

  final Widget child;

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        return;
      },
      child: Scaffold(
        body: widget.child,
        bottomNavigationBar: SafeArea(
          child: CupertinoTabBar(
            activeColor: Colors.black,
            inactiveColor: Colors.black,
            backgroundColor: context.color.white,
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
      ),
    );
  }
}
