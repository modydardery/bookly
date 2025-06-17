import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.rating,
    required this.reviewsCount,
  });
  final double rating;
  final int reviewsCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(FontAwesome.star_solid, color: Colors.yellow, size: 16),
        const SizedBox(width: 6.3),
        Text('$rating', style: Styles.textstyle16),
        const SizedBox(width: 6.3),
        Opacity(
          opacity: .5,
          child: Text('($reviewsCount)', style: Styles.textstyle14),
        ),
      ],
    );
  }
}
