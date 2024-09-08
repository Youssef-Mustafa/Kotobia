import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/wordmark-logo.png',
            width: 80,
            height: 80,
          ),
          IconButton(
            onPressed: () {
              print('fuck you');
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
