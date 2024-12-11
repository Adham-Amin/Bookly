import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6.3),
        const Text(
          '4.8',
          style: Styles.textMedium16,
        ),
        const SizedBox(width: 9),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(2390)',
            style: Styles.textMedium14.copyWith(fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
