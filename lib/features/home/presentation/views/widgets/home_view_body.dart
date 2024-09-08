import 'package:flutter/material.dart';
import 'package:kotobia/core/utlis/style.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:kotobia/features/home/presentation/views/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: BookListView(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18, right: 18, top: 50, bottom: 20),
          child: Text(
            'Best Seller',
            style: Styles.titleMeduim,
          ),
        )
      ],
    );
  }
}
