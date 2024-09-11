import 'package:flutter/material.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_card_item.dart';

class BookCardListView extends StatelessWidget {
  const BookCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BookCardItem(),
          );
        });
  }
}
