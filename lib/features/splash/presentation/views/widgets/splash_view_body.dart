import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kotobia/core/utlis/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.splashLogo,
          width: 100,
          height: 200,
        ),
      ],
    );
  }
}
