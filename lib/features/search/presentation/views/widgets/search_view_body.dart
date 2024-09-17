import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kotobia/core/utlis/style.dart';
import 'package:kotobia/features/search/presentation/manager/cubit/search_book_cubit.dart';
import 'package:kotobia/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:kotobia/features/search/presentation/views/widgets/search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          CustomSearchTextField(
            onChanged: (value) {
              // Trigger search in cubit when text changes
              context.read<SearchBookCubit>().searchBooks(value);
            },
          ),
          const SizedBox(height: 20),
          const Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: BlocBuilder<SearchBookCubit, SearchBookState>(
              builder: (context, state) {
                if (state is SearchBookLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is SearchBookSuccess) {
                  return SearchResultListView(bookModel: state.books);
                } else if (state is SearchBookFailure) {
                  return Center(child: Text(state.errorMessage));
                }
                return const Center(child: Text('Search for books...'));
              },
            ),
          ),
        ],
      ),
    );
  }
}
