import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/Widgets/search_list_view.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/Widgets/search_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          SearchTextFormField(),
          SizedBox(
            height: 32,
          ),
          Text(
            'Search Result',
            style: Styles.textSemiBold18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
