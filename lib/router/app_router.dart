
part of 'router.dart';

sealed class RouteNames {
  // static const splash = '/';
  static const main = '/';
  static const home = '/home';
  static const category = '/category';
  static const products = '/products';
  static const product = '/product';
  static const signUp = '/sign_up';
  static const confirmation = '/sign_up/confirmation';
  static const rules = '/sign_up/rules';
  static const profile = '/profile';
  static const message = '/message';

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
          path: RouteNames.products,
          builder: (context, state) {
            final CategoryEachModel category = state.extra as CategoryEachModel;
            return ProductsPage(categoryEachModel: category,);
          },
        ),
        GoRoute(
          path: RouteNames.profile,
          builder: (context, state) {
            return const ProfilePage();
          },
        ),
        GoRoute(
          path: RouteNames.message,
          builder: (context, state) {
            return const MessagePage();
          },
        ),
      ],
    ),
    GoRoute(
      path: RouteNames.product,
      builder: (context, state) {
        final ProductModel product = state.extra as ProductModel;
        return ProductPage(productModel: product,);
      },
    ),
    GoRoute(
      path: RouteNames.signUp,
      builder: (context, state) {
        return const SignUpPage();
      },
    ),
    GoRoute(
      path: RouteNames.confirmation,
      builder: (context, state) {
        return const ConfirmationPage();
      },
    ),
    GoRoute(
      path: RouteNames.rules,
      builder: (context, state) {
        return const RulesPage();
      },
    ),
  ],
);