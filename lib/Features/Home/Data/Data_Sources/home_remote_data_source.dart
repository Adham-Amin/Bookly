import 'package:bookly_app/Core/Models/book_model/book_model.dart';
import 'package:bookly_app/Core/Utils/api_services.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl(this.apiServices);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {

    Map<String, dynamic> data = await apiServices.get(
        endPoints: 'volumes?Filtering=free-ebooks&q=programming');

    List<BookEntity> books = getBooks(data);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    
    Map<String, dynamic> data = await apiServices.get(
        endPoints:
            'volumes?Filtering=free-ebooks&q=programming&Sorting=newest');

    List<BookEntity> books = getBooks(data);

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
