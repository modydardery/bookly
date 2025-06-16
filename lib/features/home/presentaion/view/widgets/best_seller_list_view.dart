import 'package:bookly/features/home/presentaion/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomeBestSellerListViwe extends StatelessWidget {
  const CustomeBestSellerListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: BookListViewItem(),
        );
      }, childCount: 10),
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
