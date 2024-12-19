import 'package:bookly_app/Core/Widgets/custom_error_message.dart';
import 'package:bookly_app/Core/Widgets/custom_loading.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_feature_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureListViewBlocBuilder extends StatelessWidget {
  const FeatureListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return FeatureListView(book: state.books,);
        } else if (state is FeaturedBooksFailure) {
          return ErrorMessage(errMesssage: state.errMessage);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
