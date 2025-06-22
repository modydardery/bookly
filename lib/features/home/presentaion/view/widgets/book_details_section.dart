import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_details_button.dart';
import 'custome_Horizontal_ListView_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .20),
          child: CustomeListViewImage(
            bookCover: book.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 15),
        Text(
          book.volumeInfo?.title ?? 'Unknown',
          style: Styles.textstyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo?.authors?.first ?? 'unknown author',
            style: Styles.textstyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10),
        BookRating(
          rating: book.volumeInfo?.averageRating ?? 4.5,
          reviewsCount: book.volumeInfo?.ratingsCount ?? 256,
        ),
        const SizedBox(height: 20),
         BookDetailsButton(book: book,),
      ],
    );
  }
}
