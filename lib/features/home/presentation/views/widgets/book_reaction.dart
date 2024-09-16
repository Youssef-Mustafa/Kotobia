import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookReaction extends StatelessWidget {
  const BookReaction(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.spaceBetween});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.solidHeart,
            color: Colors.red,
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.download,
          ),
        ),
      ],
    );
  }
}
