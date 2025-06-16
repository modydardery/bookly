import 'package:bookly/features/home/presentaion/view/book_details_view.dart';
import 'package:bookly/features/home/presentaion/view/home_view.dart';
import 'package:bookly/features/search/persentation/view/search_view.dart';
import 'package:bookly/features/splash/presentation/view/splashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const KHomeView = '/HomeView';
  static const KBookDetailsView = '/BookDetailsView';
  static const KSearchView = '/SearchView';
  static final routers = GoRouter(
    routes: [
      GoRoute(
        path:
            '/', //this is the first page will appear (must be written like that '/' )
        builder: (context, state) => const Splashview(),
      ),
      GoRoute(path: KHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
