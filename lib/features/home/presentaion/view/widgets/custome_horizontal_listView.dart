import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/manager/fearture_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentaion/view/widgets/custome_Horizontal_ListView_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomeHorizontalListView extends StatelessWidget {
  const CustomeHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucseess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .26,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomeHorizontalListViewImage(
                  bookCover:
                      state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                      'https://m.media-amazon.com/images/I/71-++hbbERL._AC_SY879_.jpg',
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailer) {
          return Center(
            child: Text(
              state.erorrMessage,
              style: TextStyle(color: Colors.white),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator(color: Colors.white));
        }
      },
    );
  }
}
