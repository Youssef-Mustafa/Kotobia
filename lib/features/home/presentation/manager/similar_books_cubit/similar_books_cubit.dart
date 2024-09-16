import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kotobia/features/home/data/models/book_model/book_model.dart';
import 'package:kotobia/features/home/data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var reslut = await homeRepo.fetchSimilarBooks(category: category);
    reslut.fold((failure) {
      emit(SimilarBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books: books));
    });
  }
}
