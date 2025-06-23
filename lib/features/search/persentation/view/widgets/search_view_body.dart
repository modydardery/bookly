import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/api/api_services.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/repos/search_repo_empl.dart';
import '../../manager/cubit/search_feature_cubit.dart';
import 'custome_search_books_listview.dart';
import 'custome_search_textbar.dart';


class SearchViewBody extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeSearchTextBar(searchController: searchController,),
          SizedBox(height: 20),
          Text('Search Result', style: Styles.textstyle18),
          SearchResultListView(),
        ],
      ),
    );
  }
}
