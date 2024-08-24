
part of 'router.dart';

sealed class RouteNames {
  // static const splash = '/';
  static const home = '/home';
  static const category = '/category';

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
        GoRoute(
          path: RouteNames.category,
          builder: (context, state) {
            final int id = state.extra as int;
            return CategoryPage(id: id,);
          },
        ),
      ],
    ),
  ],
);