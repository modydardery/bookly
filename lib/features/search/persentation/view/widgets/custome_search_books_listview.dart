import 'package:bookly/features/search/persentation/manager/cubit/search_feature_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentaion/view/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: BlocBuilder<SearchFeatureCubit, SearchFeatureState>(
          builder: (context, state) {
            if (state is SearchFeatureSuccess) {
              return ListView.builder(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                itemCount: state.books.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: BookListViewItem(
                      Book: state.books[index],
                    ), // Replace with actual book model when available
                  );
                },
              );
            } else if (state is SearchFeatureFailer) {
              return Center(
                child: Text(
                  state.errorMessage,
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
              );
            } else if (state is SearchFeatureInitial) {
              return Container(
                alignment: Alignment.center,
                child: Text(
                  'Search for books',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

/* BookListViewItem(
                Book: null, // Replace with actual book model when available
              ), */
