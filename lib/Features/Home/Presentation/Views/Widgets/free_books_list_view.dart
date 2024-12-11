import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_free_book_item.dart';
import 'package:flutter/material.dart';

class FreeBooksListView extends StatelessWidget {
  const FreeBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: CustomFreeBooksItem(),
        );
      },
    );
  }
}
