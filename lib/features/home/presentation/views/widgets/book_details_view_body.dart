import 'package:flutter/material.dart';
import 'package:kotobia/constants.dart';
import 'package:kotobia/core/utlis/style.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_action.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_rating.dart';
import 'package:kotobia/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:kotobia/features/home/presentation/views/widgets/details_books_list_view.dart';
import 'package:kotobia/features/home/presentation/views/widgets/list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookImage(),
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
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const BookAction(),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const DetailsBooksListView(),
        ],
      ),
    );
  }
}
