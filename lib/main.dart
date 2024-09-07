import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kotobia/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Kotobia());
}

class Kotobia extends StatelessWidget {
  const Kotobia({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}
