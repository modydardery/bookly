import 'package:bookly/core/api/api_services.dart';
import 'package:bookly/features/home/data/rebos/home_repo_empl.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:bookly/features/search/persentation/manager/cubit/search_feature_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/search_repo_empl.dart';
import 'widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SearchViewBody()));
  }
}
