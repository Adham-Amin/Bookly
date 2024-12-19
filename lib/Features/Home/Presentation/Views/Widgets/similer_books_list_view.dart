import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 10),
            child: CustomBookItem(image: "http://books.google.com/books/content?id=nOPuDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",),
          );
        },
      ),
    );
  }
}
