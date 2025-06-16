import 'package:bookly/core/utils/Assets.dart';
import 'package:cat/cat.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/utils/app_routers.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo, height: 18),

          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouters.KSearchView);
            },
            icon: Icon(EvaIcons.search),
            iconSize: 26,
          ),
        ],
      ),
    );
  }
}
