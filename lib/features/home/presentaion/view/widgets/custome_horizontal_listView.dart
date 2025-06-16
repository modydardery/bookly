import 'package:bookly/features/home/presentaion/view/widgets/custome_Horizontal_ListView_image.dart';
import 'package:flutter/material.dart';

class CustomeHorizontalListView extends StatelessWidget {
  const CustomeHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .26,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomeHorizontalListViewImage();
        },
      ),
    );
  }
}
