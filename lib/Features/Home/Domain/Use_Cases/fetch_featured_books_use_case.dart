import 'package:bookly_app/Core/Error/failure.dart';
import 'package:bookly_app/Core/Use_Case/use_case_param.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:bookly_app/Features/Home/Domain/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCaseParam<List<BookEntity>, int> {
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async {
    // Check permission
    return await homeRepo.fetchFeaturedBooks(page: param);
  }
}
