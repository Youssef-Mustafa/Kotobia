import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kotobia/core/widgets/custom_error_widget.dart';
import 'package:kotobia/core/widgets/custom_loading_indicator.dart';
import 'package:kotobia/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:kotobia/features/home/presentation/views/widgets/list_view_item.dart';

class DetailsBooksListView extends StatelessWidget {
  const DetailsBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '');
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CustomBookImageShimmer();
              },
            ),
          );
        }
      },
    );
  }
}
