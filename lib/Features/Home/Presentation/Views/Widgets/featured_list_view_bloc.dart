import 'package:bookly_app/Core/Widgets/custom_error_message.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_feature_list_view.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/featured_books_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureListViewBlocBuilder extends StatefulWidget {
  const FeatureListViewBlocBuilder({super.key});

  @override
  State<FeatureListViewBlocBuilder> createState() =>
      _FeatureListViewBlocBuilderState();
}

class _FeatureListViewBlocBuilderState
    extends State<FeatureListViewBlocBuilder> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPaginationFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPaginationLoading ||
            state is FeaturedBooksPaginationFailure) {
          return FeatureListView(
            book: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrorMessage(errMesssage: state.errMessage);
        } else {
          return const FeaturedBooksListViewLoadingIndicator();
        }
      },
    );
  }
}
