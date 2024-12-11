import 'package:bookly_app/Core/Utils/app_router.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      routerConfig: AppRouter.router,
    );
  }
}