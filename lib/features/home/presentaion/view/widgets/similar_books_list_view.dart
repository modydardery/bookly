import 'package:bookly/features/home/presentaion/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custome_Horizontal_ListView_image.dart';

class SimilaBooksListView extends StatelessWidget {
  const SimilaBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBooksuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomeListViewImage(
                  bookCover:
                      state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                      'https://m.media-amazon.com/images/I/71-++hbbERL._AC_SY879_.jpg',
                );
              },
            ),
          );
        } else if (state is SimilarBookFailer) {
          return Center(
            child: Text(
              state.errorMessage,
              style: TextStyle(color: Colors.red),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
