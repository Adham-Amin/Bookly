import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
    required this.errMesssage,
  });
  final String errMesssage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMesssage,
        style: Styles.textMedium16,
        textAlign: TextAlign.center,
      ),
    );
  }
}
