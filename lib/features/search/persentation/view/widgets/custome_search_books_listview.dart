import 'package:flutter/material.dart';

import '../../../../home/presentaion/view/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: 10,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child:SizedBox()
            );
          },
        ),
      ),
    );
  }
}
/* BookListViewItem(
                Book: null, // Replace with actual book model when available
              ), */
