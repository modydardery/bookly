import 'package:bookly/features/home/presentaion/manager/newest_books_cubit/newest_book_cubit.dart';
import 'package:bookly/features/home/presentaion/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomeBestSellerListViwe extends StatelessWidget {
  const CustomeBestSellerListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
          );
        } else if (state is NewestBooksFailer) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.errorMessage)),
          );
        } else if (state is NewestBookSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: BookListViewItem(Book: state.Books[index],),
              );
            }, childCount: 10),
          );
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}

/*
ListView.builder(
      // shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return BestSellerListViweItem();
      },
    );
*/
