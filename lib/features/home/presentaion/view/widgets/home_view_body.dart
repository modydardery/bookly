import 'package:bookly/features/home/presentaion/view/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentaion/view/widgets/custome_App_Bar.dart';
import 'package:bookly/features/home/presentaion/view/widgets/custome_best_seller_text_widgit.dart';
import 'package:bookly/features/home/presentaion/view/widgets/custome_horizontal_listView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomeAppBar(),
                CustomeHorizontalListView(),
                BestSellerTextWidget(),
                SizedBox(height: 20),
              ],
            ),
          ),
          CustomeBestSellerListViwe(),
        ],
      ),
    );
  }
}
