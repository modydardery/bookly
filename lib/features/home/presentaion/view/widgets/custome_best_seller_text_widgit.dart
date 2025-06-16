import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class BestSellerTextWidget extends StatelessWidget {
  const BestSellerTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 15),
      child: Text('Best Seller', style: Styles.textstyle18),
    );
  }
}
