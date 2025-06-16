import 'package:bookly/features/home/presentaion/view/widgets/costume_book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const Column(
              children: [
                CostumeBookDetailsAppBar(),
                BooksDetailsSection(),
                Expanded(child: SizedBox(height: 30)),
                SimilaBooksSection(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
