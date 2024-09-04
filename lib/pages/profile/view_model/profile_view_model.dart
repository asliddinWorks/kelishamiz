
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kelishamiz/router/router.dart';
import '../../../constants/app_icons.dart';

class ProfileViewModel extends ChangeNotifier {

  List<String> title = [
    'Mening e’lonlarim',
    'Habarlarim',
    'Saqlanganlar',
    'Qidiruvlar',
    'Mening hisobim',
    'Sozlamalar'
  ];

  List <Widget> icon = [
    SvgPicture.asset(AppIcons.icProfileAnnouncement),
    SvgPicture.asset(AppIcons.icProfileNews),
    SvgPicture.asset(AppIcons.icProfileSaved),
    SvgPicture.asset(AppIcons.icProfileSearch),
    SvgPicture.asset(AppIcons.icProfileAccount),
    SvgPicture.asset(AppIcons.icProfileSettings),
  ];

  List<Color> color = [
    Colors.blueAccent,
    Colors.orangeAccent,
    Colors.redAccent,
    const Color(0xff757790),
    Colors.brown.shade300,
    Colors.brown.shade300,
  ];

  List page = [
    RouteNames.announcements,
    RouteNames.message,
    RouteNames.message,
    RouteNames.message,
    RouteNames.message,
    RouteNames.message
  ];
}