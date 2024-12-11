import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_feature_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        SizedBox(height: 24),
        FeatureListView(),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text('Best Seller', style: Styles.textStyle18,),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}