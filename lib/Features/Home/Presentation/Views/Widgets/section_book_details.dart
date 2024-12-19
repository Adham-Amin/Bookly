import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_action.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.2,
          ),
          child: const CustomBookItem(image: "http://books.google.com/books/content?id=nOPuDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textNormal30,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textSemiBold18.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const BookRating(),
        const SizedBox(
          height: 37,
        ),
        const BookAction()
      ],
    );
  }
}
