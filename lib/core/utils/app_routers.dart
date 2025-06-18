import 'package:bookly/core/api/api_services.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/rebos/home_rebo.dart';
import 'package:bookly/features/home/data/rebos/home_repo_empl.dart';
import 'package:bookly/features/home/presentaion/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly/features/home/presentaion/view/book_details_view.dart';
import 'package:bookly/features/home/presentaion/view/home_view.dart';
import 'package:bookly/features/search/persentation/view/search_view.dart';
import 'package:bookly/features/splash/presentation/view/splashView.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder:
            (context, state) => BlocProvider(
              create: (context) => SimilarBookCubit(HomeRepoEmpl(ApiServices(Dio()))),
              child:  BookDetailsView(book: state.extra as BookModel,),
              
            ),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
