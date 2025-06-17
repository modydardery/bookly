import 'package:bookly/constants.dart';
import 'package:bookly/core/api/api_services.dart';
import 'package:bookly/core/utils/app_routers.dart';
import 'package:bookly/features/home/data/rebos/home_repo_empl.dart';
import 'package:bookly/features/home/presentaion/manager/fearture_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentaion/manager/newest_books_cubit/newest_book_cubit.dart';
import 'package:cat/cat.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  FeaturedBooksCubit(HomeRepoEmpl(ApiServices(Dio())))
                    ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create:
              (context) =>
                  NewestBookCubit(HomeRepoEmpl(ApiServices(Dio())))
                    ..fetchdNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.routers,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KprimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
