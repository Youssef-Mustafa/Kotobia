import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kotobia/core/utlis/saved_color.dart';

class BookReaction extends StatefulWidget {
  const BookReaction(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.spaceBetween});
  final MainAxisAlignment mainAxisAlignment;

  @override
  State<BookReaction> createState() => _BookReactionState();
}

class _BookReactionState extends State<BookReaction> {
  Color _heartColor = Colors.white; // Default color (white)

  @override
  void initState() {
    super.initState();
    _loadHeartColor();
  }

  // Load the saved heart color
  Future<void> _loadHeartColor() async {
    final color = await loadHeartColor();
    setState(() {
      _heartColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.mainAxisAlignment,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            setState(() {
              _heartColor = _heartColor == Colors.white
                  ? Color(0xffff0000)
                  : Colors.white; // Toggle color
              saveHeartColor(_heartColor); // Save the new color preference
            });
          },
          icon: Icon(
            FontAwesomeIcons.solidHeart,
            color: _heartColor,
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
