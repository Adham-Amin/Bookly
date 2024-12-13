import 'package:bookly_app/Features/Home/Presentation/Views/book_details_view.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:bookly_app/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/homeView';
  static const bookDetails = '/bookDetails';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
       GoRoute(
        path: bookDetails,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
