import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:hive/hive.dart';

Future<void> saveBooks(List<BookEntity> books, String nameBox) async {
  var box = Hive.box(nameBox);
  await box.addAll(books);
}
