import 'package:bookly/core/widgets/costume_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/functions/link_luncher.dart';
import '../../../data/models/book_model/book_model.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CostumeButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              onPressed: () async {
                Uri url = Uri.parse(
                  book.volumeInfo?.previewLink ?? 'https://www.google.com',
                );
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              book: book,
            ),
          ),

          Expanded(
            child: CostumeButton(
              fontsize: 16,
              text: getString(book),
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              onPressed: () async {
                customLaunchUrl(context, book.volumeInfo!.previewLink!);
              },
              book: book,
            ),
          ),
        ],
      ),
    );
  }

  String getString(BookModel book) {
    return book.volumeInfo?.previewLink == null ? 'Not available' : 'preview';
  }
}
