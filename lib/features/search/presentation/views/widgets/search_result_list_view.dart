import 'package:flutter/material.dart';
import 'package:kotobia/features/home/data/models/book_model/book_model.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_card_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.bookModel});
  final List<BookModel> bookModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          // child: BookCardItem(),
          child: BookCardItem(bookModel: bookModel[index]),
        );
      },
    );
  }
}
