import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:bookly_app/Features/Home/Domain/Use_Cases/fetch_featured_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featuredBooksUseCase.call();

    result.fold(
      (failure) => emit(FeaturedBooksFailure(errMessage: failure.errMessage)),
      (books) => emit(FeaturedBooksSuccess(books: books)),
    );
  }
}
