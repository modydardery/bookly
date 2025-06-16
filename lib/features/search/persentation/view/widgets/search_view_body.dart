import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custome_search_books_listview.dart';
import 'custome_search_textbar.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeSearchTextBar(),
          SizedBox(height: 20),
          Text('Search Result', style: Styles.textstyle18),
          SearchResultListView(),
        ],
      ),
    );
  }
}
