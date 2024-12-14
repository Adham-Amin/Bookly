import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Core/Widgets/custom_button.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              backgroundColor: Colors.white,
              style: Styles.textSemiBold18.copyWith(color: Colors.black),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              backgroundColor: const Color(0xffEF8262),
              style: Styles.textMedium16.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: kGilroy),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
