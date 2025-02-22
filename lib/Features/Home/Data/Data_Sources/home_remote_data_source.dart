import 'package:bookly_app/Core/Models/book_model/book_model.dart';
import 'package:bookly_app/Core/Utils/Functions/save_books.dart';
import 'package:bookly_app/Core/Utils/api_services.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:bookly_app/constants.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int page = 0});
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl(this.apiServices);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int page = 0}) async {

    Map<String, dynamic> data = await apiServices.get(
        endPoints: 'volumes?Filtering=free-ebooks&q=programming&startIndex=${page * 10}');

    List<BookEntity> books = getBooks(data);

    await saveBooks(books, kFeaturedBooksBox);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    
    Map<String, dynamic> data = await apiServices.get(
        endPoints:
            'volumes?Filtering=free-ebooks&q=programming&Sorting=newest');

    List<BookEntity> books = getBooks(data);

    await saveBooks(books, kNewestBooksBox);

    return books;
  }

  List<BookEntity> getBooks(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var book in data['items']) {
      books.add(BookModel.fromJson(book));
    }
    return books;
  }
}
