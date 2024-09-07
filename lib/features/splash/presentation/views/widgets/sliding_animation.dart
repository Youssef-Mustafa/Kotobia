import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
    required this.slidingAnimation2,
    required this.slidingAnimation3,
  });

  final Animation<Offset> slidingAnimation;
  final Animation<Offset> slidingAnimation2;
  final Animation<Offset> slidingAnimation3;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: slidingAnimation,
                child: const Column(
                  children: [
                    Icon(Icons.local_cafe), // Coffee icon
                    Text('Coffee'),
                  ],
                ),
              ),
              const SizedBox(width: 20), // Add space between icons
              SlideTransition(
                position: slidingAnimation2,
                child: const Column(
                  children: [
                    Icon(Icons.music_note), // Music icon
                    Text('Music'),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              SlideTransition(
                position: slidingAnimation3,
                child: const Column(
                  children: [
                    Icon(Icons.auto_stories), // Book icon
                    Text('Books'),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
