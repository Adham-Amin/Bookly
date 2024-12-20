import 'package:bookly_app/Core/Utils/app_router.dart';
import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetails);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            const CustomBookItem(image: "http://books.google.com/books/content?id=nOPuDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textBlod20.copyWith(
                      fontWeight: FontWeight.w400,
                      fontFamily: kGTSectraFine,
                    ),
                  ),
                  const Opacity(
                    opacity: 0.7,
                    child: Text(
                      'J.K. Rowling',
                      style: Styles.textMedium14,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textBlod20,
                      ),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
