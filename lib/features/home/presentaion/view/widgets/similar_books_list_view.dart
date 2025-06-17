import 'package:flutter/material.dart';

import 'custome_Horizontal_ListView_image.dart';

class SimilaBooksListView extends StatelessWidget {
  const SimilaBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  CustomeHorizontalListViewImage(bookCover: 'https://m.media-amazon.com/images/I/71-++hbbERL._AC_SY879_.jpg',);
        },
      ),
    );
  }
}
