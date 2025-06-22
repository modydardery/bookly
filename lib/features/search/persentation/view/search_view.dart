import 'package:bookly/features/search/persentation/manager/cubit/search_feature_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/search_view_body.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    BlocProvider.of<SearchFeatureCubit>(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SearchViewBody()));
  }
}
