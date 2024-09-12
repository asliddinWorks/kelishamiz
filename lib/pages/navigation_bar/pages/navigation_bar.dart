
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
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: SafeArea(
        child: CupertinoTabBar(
          activeColor: Colors.black,
          inactiveColor: Colors.black,
          backgroundColor: context.color.white,
          onTap: (index) {
            context.go(RouteNames.main,);
            context.read<MainViewModel>().onTapNavBar(index);
          },
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.icHome,
              ),
              label: 'Asosiy',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.icFavorite,
              ),
              label: 'Saqlanganar',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.icAdd,
              ),
              label: "Qo'shish",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.icMessage,
                colorFilter: ColorFilter.mode(context.colorScheme.primary, BlendMode.srcIn),
              ),
              label: 'Xabarlar',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.icProfile,
              ),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
