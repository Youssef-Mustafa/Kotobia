import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kotobia/core/errors/failure.dart';
import 'package:kotobia/core/utlis/api_service.dart';
import 'package:kotobia/features/home/data/models/book_model/book_model.dart';
import 'package:kotobia/features/search/data/repo/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> searchBook(String searchKey) async {
    try {
      var result = await apiService.get(endPoint: 'volumes?q=$searchKey');
      List<BookModel> books = [];
      for (var item in result['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        // Handle Dio-specific errors
        return left(ServerFailure.fromDioException(e));
      }
      // Handle other exceptions
      return left(ServerFailure(e.toString()));
    }
  }
}
