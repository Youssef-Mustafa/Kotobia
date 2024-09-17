import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:kotobia/core/errors/failure.dart';
import 'package:kotobia/features/home/data/models/book_model/book_model.dart';
import 'package:kotobia/features/search/data/repo/search_repo.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  final SearchRepo searchRepo;
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());

  Future<void> searchBooks(String searchKey) async {
    if (searchKey.isEmpty) return; // Prevent empty searches

    emit(SearchBookLoading());

    Either<Failure, List<BookModel>> result =
        await searchRepo.searchBook(searchKey);

    result.fold(
      (failure) {
        emit(SearchBookFailure((failure.errorMessage)));
      },
      (books) {
        emit(SearchBookSuccess(books));
      },
    );
  }
}
