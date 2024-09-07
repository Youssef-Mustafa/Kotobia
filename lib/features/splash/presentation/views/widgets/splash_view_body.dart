import 'package:flutter/material.dart';
import 'package:kotobia/core/utlis/assets.dart';
import 'package:kotobia/features/splash/presentation/views/widgets/sliding_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimation2;
  late Animation<Offset> slidingAnimation3;
  late Animation<Offset> slidingAnimation4;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(-2, 0), end: const Offset(0, 0))
            .animate(animationController);
    slidingAnimation2 =
        Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0))
            .animate(animationController);
    slidingAnimation3 =
        Tween<Offset>(begin: const Offset(2, 0), end: const Offset(0, 0))
            .animate(animationController);
    slidingAnimation4 =
        Tween<Offset>(begin: const Offset(0, -2), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation4,
                child: Image.asset(
                  AssetsData.splashLogo,
                  width: 100,
                  height: 200,
                ),
              );
            }),
        const SizedBox(
          height: 10,
        ),
        SlidingText(
          slidingAnimation: slidingAnimation,
          slidingAnimation2: slidingAnimation2,
          slidingAnimation3: slidingAnimation3,
        )
      ],
    );
  }
}
