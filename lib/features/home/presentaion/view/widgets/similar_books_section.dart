import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'similar_books_list_view.dart';

class SimilaBooksSection extends StatelessWidget {
  const SimilaBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 10),
        const SimilaBooksListView(),
      ],
    );
  }
}
