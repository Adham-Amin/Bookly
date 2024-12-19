import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key, required this.book});

  final List<BookEntity> book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: book.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CustomBookItem(image: book[index].image,),
          );
        },
      ),
    );
  }
}
