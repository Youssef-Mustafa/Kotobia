import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:kotobia/constants.dart';
import 'package:kotobia/core/utlis/app_router.dart';
import 'package:kotobia/core/utlis/style.dart';
import 'package:kotobia/features/home/data/models/book_model/book_model.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_reaction.dart';
import 'package:kotobia/features/home/presentation/views/widgets/list_view_item.dart';

class BookCardItem extends StatelessWidget {
  const BookCardItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(
            AppRouter.kDetailsView,
            extra: bookModel,
          );
        },
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                    'https://media.allauthor.com/images/quotes/img/michel-de-montaigne-quote-the-value-of-life-lies-not-in-the.jpg',
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: Styles.textStyle20.copyWith(
                            fontFamily: kSecondaryFontFamily, height: 1),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      bookModel.volumeInfo.authors?[0] ?? 'Unkown',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle14,
                    ),
                    const Expanded(
                      child: SizedBox(
                        height: 1,
                      ),
                    ),
                    const BookReaction(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
