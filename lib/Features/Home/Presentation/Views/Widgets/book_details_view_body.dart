import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/section_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          SizedBox(
            height: 34,
          ),
          SectionBookDetails(),
        ],
      ),
    );
  }
}