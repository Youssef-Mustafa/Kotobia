import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kotobia/core/utlis/api_service.dart';
import 'package:kotobia/core/utlis/service_locator.dart';
import 'package:kotobia/features/search/data/repo/search_repo_impl.dart';
import 'package:kotobia/features/search/presentation/manager/cubit/search_book_cubit.dart';
import 'package:kotobia/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SearchBookCubit(SearchRepoImpl(getIt.get<ApiService>())),
      child: const Scaffold(
        body: SafeArea(
          child: SearchViewBody(),
        ),
      ),
    );
  }
}
