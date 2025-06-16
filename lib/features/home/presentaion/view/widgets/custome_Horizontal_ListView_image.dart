import 'package:bookly/core/utils/Assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routers.dart';

class CustomeHorizontalListViewImage extends StatelessWidget {
  const CustomeHorizontalListViewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: AspectRatio(
        aspectRatio: 123 / 193.3,
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouters.KBookDetailsView);
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsData.bookCover),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
      ),
    );
  }
}
