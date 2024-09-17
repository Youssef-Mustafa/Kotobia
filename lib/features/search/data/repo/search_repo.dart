import 'package:dartz/dartz.dart';
import 'package:kotobia/core/errors/failure.dart';
import 'package:kotobia/features/home/data/models/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> searchBook(String searchKey);
}
