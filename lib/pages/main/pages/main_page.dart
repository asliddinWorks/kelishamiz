
import 'package:flutter/material.dart';
import 'package:kelishamiz/core/view_model/app_view_model.dart';
import 'package:kelishamiz/pages/favorite/pages/favorite_page.dart';
import 'package:kelishamiz/pages/home/pages/home_page.dart';
import 'package:kelishamiz/pages/main/view_model/main_view_model.dart';
import 'package:kelishamiz/pages/profile/pages/profile_page.dart';
import 'package:kelishamiz/pages/sign_up/pages/sign_up_page.dart';
import 'package:provider/provider.dart';

import '../../add/pages/add_page.dart';
import '../../message/pages/message_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    context.read<AppViewModel>().getGridAxisCount();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<MainViewModel>().currentIndex,
        children: const [
          HomePage(),
          FavoritePage(),
          AddPage(),
          MessagePage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
