import 'package:bookly_app/Core/Error/failure.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
