import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(FontAwesome.star_solid, color: Colors.yellow, size: 16),
        const SizedBox(width: 6.3),
        const Text('4.8', style: Styles.textstyle16),
        const SizedBox(width: 6.3),
        Opacity(opacity: .5, child: Text('(256)', style: Styles.textstyle14)),
      ],
    );
  }
}
