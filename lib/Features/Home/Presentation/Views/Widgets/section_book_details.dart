import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_action.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SectionBookDetails extends StatelessWidget {
  const SectionBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: const CustomBookItem(),
        ),
        const SizedBox(
          height: 42,
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
          height: 12,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRating(),
          ],
        ),
        const SizedBox(
          height: 36,
        ),
        const BookAction()
      ],
    );
  }
}
