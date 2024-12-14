import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius,
    required this.text,
    required this.backgroundColor,
    required this.style,
  });

  final String text;
  final Color backgroundColor;
  final TextStyle style;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                borderRadius ?? const BorderRadius.all(Radius.circular(16)),
          ),
        ),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
