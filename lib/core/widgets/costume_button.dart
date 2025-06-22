import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.onPressed,
    this.fontsize, required this.book,
  });
  final double? fontsize;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final void Function() onPressed;
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,

      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),

          backgroundColor: backgroundColor,
        ),
        onPressed: () async {
          Uri url = Uri.parse(book.volumeInfo?.previewLink ?? 'https://www.google.com');
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: Text(
          text,
          style: Styles.textstyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
