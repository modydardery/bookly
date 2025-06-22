import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/view/widgets/costume_book_details_app_bar.dart';
import 'package:bookly/features/home/presentaion/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CostumeBookDetailsAppBar(),
                BooksDetailsSection(book: book),
                const Expanded(child: SizedBox(height: 15)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textstyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SimilaBooksSection(),
                SimilaBooksListView(),
                // const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
