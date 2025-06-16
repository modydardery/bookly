import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_details_button.dart';
import 'custome_Horizontal_ListView_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .20),
          child: const CustomeHorizontalListViewImage(),
        ),
        const SizedBox(height: 30),
        Text('The Jungle Book', style: Styles.textstyle30),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textstyle18.copyWith(
              fontStyle: FontStyle.italic,

              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(),
        const SizedBox(height: 20),
        const BookDetailsButton(),
      ],
    );
  }
}
