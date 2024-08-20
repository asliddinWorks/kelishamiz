import 'package:flutter/material.dart';
import 'package:kelishamiz/core/theme/theme.dart';
import 'package:kelishamiz/router/router.dart';
import 'package:provider/provider.dart';

void main() {
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
