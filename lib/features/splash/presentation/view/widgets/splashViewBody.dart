import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/Assets.dart';
import 'package:bookly/features/splash/presentation/view/widgets/slidingTexxt.dart';
import 'package:cat/cat.dart';
import 'package:go_router/go_router.dart';

class SplashviewBody extends StatefulWidget {
  const SplashviewBody({super.key});

  @override
  State<SplashviewBody> createState() => _SplashviewBodyState();
}

class _SplashviewBodyState extends State<SplashviewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomePage();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 20),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHomePage() {
    Future.delayed(KTransitionDurationTime, () {
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.fade,
      //   duration: KTransitionDurationTime,
      // );
      GoRouter.of(context).push('/HomeView');
    });
  }
}
