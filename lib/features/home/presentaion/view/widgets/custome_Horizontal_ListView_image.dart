import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomeListViewImage extends StatelessWidget {
  const CustomeListViewImage({super.key, required this.bookCover});
  final String bookCover;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 120 / 193.3,
          child: CachedNetworkImage(
            imageUrl: bookCover,
            fit: BoxFit.fill,
            errorWidget:
                (context, url, error) => Icon(
                  Icons.menu_book_rounded,
                  size: 70,
                  color: Colors.white54,
                ),
            placeholder:
                (context, url) => Center(
                  child: CircularProgressIndicator(color: Colors.white54),
                ),
          ),
        ),
      ),
    );
  }
}
