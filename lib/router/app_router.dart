
part of 'router.dart';

sealed class RouteNames {
  // static const splash = '/';
  static const home = '/home';

}

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return NavigationBar(child: child);
      },
      routes: [
        GoRoute(
          path: RouteNames.home,
          builder: (context, state) {
            return const HomePage();
          },
        ),
      ],
    ),
  ],
);