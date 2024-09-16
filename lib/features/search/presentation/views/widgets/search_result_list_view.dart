import 'package:flutter/material.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_card_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          // child: BookCardItem(),
          child: Text('data'),
        );
      },
    );
  }
}
