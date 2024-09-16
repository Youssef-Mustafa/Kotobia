import 'package:flutter/material.dart';
import 'package:kotobia/constants.dart';
import 'package:kotobia/core/utlis/style.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_action.dart';
import 'package:kotobia/features/home/presentation/views/widgets/list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomBookImage(
            imageUrl:
                'https://media.allauthor.com/images/quotes/img/michel-de-montaigne-quote-the-value-of-life-lies-not-in-the.jpg',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          'Harry Potter',
          style: Styles.textStyle30.copyWith(
            fontFamily: kSecondaryFontFamily,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'J.K Rowling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        // const BookRating(
        //   rating: 'h',
        //   mainAxisAlignment: MainAxisAlignment.center,
        // ),
        const SizedBox(
          height: 30,
        ),
        const BookAction(),
      ],
    );
  }
}
