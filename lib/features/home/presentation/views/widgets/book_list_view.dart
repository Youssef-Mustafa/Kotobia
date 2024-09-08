import 'package:flutter/material.dart';
import 'package:kotobia/features/home/presentation/views/widgets/list_view_item.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const ListViweItem();
          }),
    );
  }
}
