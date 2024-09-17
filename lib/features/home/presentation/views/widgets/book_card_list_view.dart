import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kotobia/core/widgets/custom_error_widget.dart';
import 'package:kotobia/core/widgets/custom_loading_indicator.dart';
import 'package:kotobia/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:kotobia/features/home/presentation/views/widgets/book_card_item.dart';

class BookCardListView extends StatelessWidget {
  const BookCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BookCardItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: VerticalListLoading(),
              );
            },
          );
        }
      },
    );
  }
}
