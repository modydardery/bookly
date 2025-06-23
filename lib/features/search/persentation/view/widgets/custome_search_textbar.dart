import 'package:bookly/features/search/persentation/manager/cubit/search_feature_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomeSearchTextBar extends StatelessWidget {
  const CustomeSearchTextBar({super.key, required this.searchController});
  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      onSubmitted: (value) {
        BlocProvider.of<SearchFeatureCubit>(
          context,
        ).fetchSearchedBooks(bookTitle: searchController.text);
      },
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(90)),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(90)),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 49, 36, 90),
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(90)),
        ),
        labelText: 'Book Name',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Bootstrap.search, color: Colors.white, size: 20),
        ),
        labelStyle: TextStyle(color: Colors.white),
      ),
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );
  }
}
