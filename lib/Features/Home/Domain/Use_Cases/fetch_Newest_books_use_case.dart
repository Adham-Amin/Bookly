import 'package:bookly_app/Core/Error/failure.dart';
import 'package:bookly_app/Core/Use_Case/use_case_no_param.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:bookly_app/Features/Home/Domain/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    // check permission
    return await homeRepo.fetchNewestBooks();
  }
}
