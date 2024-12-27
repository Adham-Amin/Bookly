part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksPaginationLoading extends FeaturedBooksState {}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books;

  FeaturedBooksSuccess({required this.books});
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksFailure({required this.errMessage});
}

final class FeaturedBooksPaginationFailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksPaginationFailure({required this.errMessage});
}
