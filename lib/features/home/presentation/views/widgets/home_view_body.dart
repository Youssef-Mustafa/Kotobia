import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kotobia/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:kotobia/features/home/presentation/views/widgets/list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        BookListView(),
      ],
    );
  }
}

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: ListViweItem(),
            );
          }),
    );
  }
}
