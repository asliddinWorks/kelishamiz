
part of 'router.dart';

sealed class RouteNames {
  static const main = '/';
  static const home = '/home';
  static const category = '/category';
  static const products = '/products';
  static const product = '/product';
  static const signUp = '/sign_up';
  static const confirmation = '/confirmation';
  static const rules = '/rules';
  static const profile = '/profile';
  static const message = '/message';
  static const messageEach = '/messageEach';
  static const announcements = '/announcements';
  static const login = '/login';
  static const register = '/register';
  static const fillAccount = '/fill_account';
  static const filter = '/filter';
  static const search = '/search';
  static const fill = '/fill_page';
  static const paymentTable = '/payment_table';
  static const settingsPage = '/settingsPage';
  static const setupAccount = '/setupAccount';

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
        GoRoute(
          path: RouteNames.message,
          builder: (context, state) {
            return const MessagePage();
          },
        ),
        GoRoute(
          path: RouteNames.filter,
          builder: (context, state) {
            return const FilterPage();
          },
        ),
        GoRoute(
          path: RouteNames.search,
          builder: (context, state) {
            return const SearchPage();
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
      path: RouteNames.announcements,
      builder: (context, state) {
        return const AnnouncementsPage();
      },
    ),
    GoRoute(
      path: RouteNames.login,
      builder: (context, state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: RouteNames.register,
      builder: (context, state) {
        return const RegisterPage();
      },
    ),
    GoRoute(
      path: RouteNames.fillAccount,
      builder: (context, state) {
        return const FillAccountPage();
      },
    ),
    GoRoute(
      path: RouteNames.fill,
      builder: (context, state) {
        return const FillPage();
      },
    ),
    GoRoute(
      path: RouteNames.paymentTable,
      builder: (context, state) {
        return const PaymentTablePage();
      },
    ),
    GoRoute(
      path: RouteNames.messageEach,
      builder: (context, state) {
        return const MessageEachPage();
      },
    ),
    GoRoute(
      path: RouteNames.settingsPage,
      builder: (context, state) {
        return const SettingsPage();
      },
    ),
    GoRoute(
      path: RouteNames.setupAccount,
      builder: (context, state) {
        return const SetupAccountPage();
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