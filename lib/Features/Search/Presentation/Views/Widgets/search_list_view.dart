
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BooksListViewItem(),
        );
      },
    );
  }
}
