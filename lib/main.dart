import 'package:flutter/material.dart';
import 'package:kelishamiz/core/theme/theme.dart';
import 'package:kelishamiz/pages/announcements/view_model/announcements_view_model.dart';
import 'package:kelishamiz/pages/category/view_model/category_view_model.dart';
import 'package:kelishamiz/pages/main/view_model/main_view_model.dart';
import 'package:kelishamiz/pages/message/view_model/message_view_model.dart';
import 'package:kelishamiz/pages/profile/view_model/profile_view_model.dart';
import 'package:kelishamiz/pages/sign_up/view_model/sign_up_view_model.dart';
import 'package:kelishamiz/router/router.dart';
import 'package:provider/provider.dart';

import 'core/view_model/app_view_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppThemeViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => MainViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignUpViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => MessageViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => AnnouncementsViewModel(),
        ),

      ],
      builder: (BuildContext context, Widget? child) {
        return Consumer<AppThemeViewModel>(
          builder: (context, viewModel, _) {
            return MaterialApp.router(
              routerConfig: router,
              title: 'Flutter Demo',
              theme: lightTheme(context),
              // darkTheme: darkTheme(context),
              themeMode: viewModel.themeMode,
            );
          }
        );
      }
    );
  }
}
