import 'package:flutter/material.dart';
import 'package:kotobia/core/utlis/assets.dart';

class ListViweItem extends StatelessWidget {
  const ListViweItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testBookImage),
          ),
        ),
      ),
    );
  }
}
