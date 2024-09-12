import 'package:dartz/dartz.dart';
import 'package:kotobia/core/errors/failure.dart';
import 'package:kotobia/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
