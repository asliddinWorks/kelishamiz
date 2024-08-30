
part of 'router.dart';

sealed class RouteNames {
  // static const splash = '/';
  static const main = '/';
  static const home = '/home';
  static const category = '/category';
  static const product = '/product';

}

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return NavigationBar(child: child);
      },
      routes: [
        GoRoute(
          path: RouteNames.main,
          builder: (context, state) {
            return const MainPage();
          },
        ),
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
        GoRoute(
          path: RouteNames.product,
          builder: (context, state) {
            final CategoryEachModel category = state.extra as CategoryEachModel;
            return ProductsPage(categoryEachModel: category,);
          },
        ),
      ],
    ),
  ],
);