import 'package:go_router/go_router.dart';
import 'package:kotobia/features/home/presentation/views/book_details_view.dart';
import 'package:kotobia/features/home/presentation/views/home_view.dart';
import 'package:kotobia/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
