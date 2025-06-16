import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Read Free Books',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        );
      },
      animation: slidingAnimation,
    );
  }
}
