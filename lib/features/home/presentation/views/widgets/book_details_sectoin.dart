import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kotobia/constants.dart';
import 'package:kotobia/core/utlis/style.dart';
import 'package:kotobia/features/home/data/models/book_model/book_model.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_action.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_reaction.dart';
import 'package:kotobia/features/home/presentation/views/widgets/list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                'https://media.allauthor.com/images/quotes/img/michel-de-montaigne-quote-the-value-of-life-lies-not-in-the.jpg',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          textAlign: TextAlign.center,
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
            fontFamily: kSecondaryFontFamily,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          maxLines: 1,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            textAlign: TextAlign.center,
            bookModel.volumeInfo.authors?[0] ?? 'Unkown',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const BookReaction(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 5,
        ),
        const BookAction(),
      ],
    );
  }
}
