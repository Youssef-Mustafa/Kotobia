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
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(Icons.local_cafe), // Coffee icon
                Text('Coffee'),
              ],
            ),
            SizedBox(width: 20), // Add space between icons
            Column(
              children: [
                Icon(Icons.music_note), // Music icon
                Text('Music'),
              ],
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Icon(Icons.auto_stories), // Book icon
                Text('Books'),
              ],
            ),
          ],
        )
      ],
    );
  }
}
